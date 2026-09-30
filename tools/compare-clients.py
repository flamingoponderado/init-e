#!/usr/bin/env python3
"""compare-clients.py -- compare ZisK step counts and cost estimates of this
repo's guest against the reth and ethrex stateless-validator guests.

    tools/compare-clients.py fetch
    tools/compare-clients.py devnet7 --pancake-elf ELF [--pancake-soft-elf ELF] [--blocks A-B]
    tools/compare-clients.py corpus  --pancake-elf ELF [--match SUBSTR ...]
    tools/compare-clients.py table   work/cmp/devnet7.json

Everything lands under work/cmp/ (gitignored). See docs/CLIENT-COMPARISON.md
for what the two experiments measure and why each one uses the guest versions
it does.

`fetch` downloads the pinned client ELFs and the ZisK v1.1.0-alpha emulator and
checks their SHA-256 (the digests match the ones GitHub publishes for each
release asset). Every run uses `ziskemu -X` from that emulator, the version the
client guests were built for.

Stateless-input layouts. All three implementations read the same SSZ
StatelessInput, but its top-level container changed between spec releases:

    v06   [new_payload_request, witness, chain_config, public_keys]   devnet-7 data,
                                                                       tests-zkevm@v0.6.x
    v084  [new_payload_request, witness, chain_id,     public_keys]   tests-zkevm@v0.8.x
                                                                       (current client guests)
    v21   [new_payload_request, witness, chain_id]                    tests-zkevm@v21.0.1
                                                                       (this repo's guest)

The nested encodings are identical on the wire, so a v21 input is turned into a
v084 one by appending the transactions' public keys, recovered here from the
signatures with plain big-integer secp256k1 arithmetic.
"""
import argparse
import concurrent.futures
import hashlib
import importlib.util
import json
import os
import re
import struct
import subprocess
import sys
import tarfile
import urllib.request

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
CMP = os.path.join(ROOT, "work", "cmp")
ZISKEMU = os.path.join(CMP, "zisk-v1.1.0-alpha", "ziskemu")

ZISK_URL = ("https://github.com/0xPolygonHermez/zisk/releases/download/v1.1.0-alpha/"
            "cargo_zisk_linux_amd64.tar.gz")
ZISK_SHA = "b6aebca0912eb726889039e5192e7bc0e2c0a4d40e43dca24eeca398c76b7d17"

ERE = "https://github.com/eth-act/ere-guests/releases/download"
# name -> (url, sha256, input layout)
GUESTS = {
    # Built for the devnet-7 era (tests-zkevm v0.6.x layout): ere-guests v0.16.0.
    "reth-f804dc1": (
        f"{ERE}/v0.16.0/stateless-validator-reth-zisk-v1.1.0-alpha.elf",
        "194118a5ac9534d50a22cbab033715875a8872d4630018c61e1608ecf4a994cd", "v06"),
    "ethrex-v23.0.0": (
        f"{ERE}/v0.16.0/stateless-validator-ethrex-zisk-v1.1.0-alpha.elf",
        "698d7bac6f676e2b45e8995631c921b056d1ab67a4dc979dadc43acd20f6bd59", "v06"),
    # Current releases (tests-zkevm v0.8.x layout): ere-guests v0.17.1 and ethrex v28.0.0.
    "reth-0.1.0-rc.3": (
        f"{ERE}/v0.17.1/stateless-validator-reth-zisk-v1.1.0-alpha.elf",
        "89e4d8d4a6a624659e1281efda6f83e4259fd09e21024702d00e7149de4aa922", "v084"),
    "ethrex-v27.0.0": (
        f"{ERE}/v0.17.1/stateless-validator-ethrex-zisk-v1.1.0-alpha.elf",
        "760f6404df3849cb3f40a9e3cefac93a03d30f27ab7be8a1d715e2f8dbbcbad8", "v084"),
    "ethrex-v28.0.0": (
        "https://github.com/lambdaclass/ethrex/releases/download/v28.0.0/"
        "stateless-validator-ethrex-zisk-v1.1.0-alpha.elf",
        "5ba7fec4bebac140efe3dec21be456c30ca17743fd01c5600f73d5c83be9bef0", "v084"),
}

DEVNET7_URL = ("https://pub-df22334654034ebab51bc096137a59d8.r2.dev/devnets/"
               "glamsterdam-devnet-7/exports/batches/115260-115269.tar.zst")
DEVNET7_SHA = "30562c14a0ac768861fd44e592408f7d5f3775919eb623ac25cda91427dd0405"


def sha256(path):
    h = hashlib.sha256()
    with open(path, "rb") as f:
        for chunk in iter(lambda: f.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


def download(url, dest, digest):
    os.makedirs(os.path.dirname(dest), exist_ok=True)
    if not (os.path.exists(dest) and sha256(dest) == digest):
        print(f"downloading {url}", file=sys.stderr)
        urllib.request.urlretrieve(url, dest)
    got = sha256(dest)
    if got != digest:
        sys.exit(f"sha256 mismatch for {dest}: {got} != {digest}")


def elf_path(name):
    return os.path.join(CMP, "elf", name + ".elf")


def cmd_fetch(_args):
    tarball = os.path.join(CMP, "zisk-v1.1.0-alpha.tar.gz")
    download(ZISK_URL, tarball, ZISK_SHA)
    if not os.path.exists(ZISKEMU):
        os.makedirs(os.path.dirname(ZISKEMU), exist_ok=True)
        with tarfile.open(tarball) as tar:
            member = tar.getmember("./bin/ziskemu")
            member.name = "ziskemu"
            tar.extract(member, os.path.dirname(ZISKEMU))
    for name, (url, digest, _layout) in GUESTS.items():
        download(url, elf_path(name), digest)
    print(subprocess.run([ZISKEMU, "--version"], capture_output=True, text=True).stdout.strip())


# --- input layouts ---------------------------------------------------------

def frame(blob):
    """The ziskemu -i framing: u64 LE length, payload, zero padding to 8."""
    return struct.pack("<Q", len(blob)) + blob + bytes((-len(blob)) % 8)


def unframe(packed):
    n = struct.unpack_from("<Q", packed)[0]
    return packed[8:8 + n]


def _load_exp_tx():
    sys.path.insert(0, os.path.join(ROOT, "tools"))   # pyref, used by exp_tx
    spec = importlib.util.spec_from_file_location(
        "exp_tx", os.path.join(ROOT, "guest", "test", "exp_tx.py"))
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod


_P = 2**256 - 2**32 - 977
_N = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141
_G = (0x79BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798,
      0x483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8)


def _add(a, b):
    if a is None:
        return b
    if b is None:
        return a
    if a[0] == b[0] and (a[1] + b[1]) % _P == 0:
        return None
    if a == b:
        m = 3 * a[0] * a[0] * pow(2 * a[1], -1, _P) % _P
    else:
        m = (b[1] - a[1]) * pow(b[0] - a[0], -1, _P) % _P
    x = (m * m - a[0] - b[0]) % _P
    return (x, (m * (a[0] - x) - a[1]) % _P)


def _mul(k, pt):
    out = None
    while k:
        if k & 1:
            out = _add(out, pt)
        pt = _add(pt, pt)
        k >>= 1
    return out


def recover_pubkey(h, r, s, recid):
    """Uncompressed SEC1 public key (65 bytes) of the signer of hash h."""
    y2 = (pow(r, 3, _P) + 7) % _P
    y = pow(y2, (_P + 1) // 4, _P)
    if y * y % _P != y2:
        return None
    if (y & 1) != (recid & 1):
        y = _P - y
    rinv = pow(r, -1, _N)
    q = _add(_mul(s * rinv % _N, (r, y)),
             _mul((-int.from_bytes(h, "big") * rinv) % _N, _G))
    if q is None:
        return None
    return b"\x04" + q[0].to_bytes(32, "big") + q[1].to_bytes(32, "big")


def _transactions(npr):
    o_pl, o_vh = struct.unpack_from("<II", npr, 0)
    payload = npr[o_pl:o_vh]
    o_tx, o_wd = struct.unpack_from("<II", payload, 504)
    txs = payload[o_tx:o_wd]
    if not txs:
        return []
    n = struct.unpack_from("<I", txs, 0)[0] // 4
    offs = [struct.unpack_from("<I", txs, 4 * i)[0] for i in range(n)] + [len(txs)]
    return [txs[offs[i]:offs[i + 1]] for i in range(n)]


def v06_to_v21(blob):
    """[npr, witness, chain_config, public_keys] -> [npr, witness, chain_id]."""
    body = blob[2:]
    o_npr, o_wit, o_cc, _o_pk = struct.unpack_from("<4I", body, 0)
    chain_id = struct.unpack_from("<Q", body, o_cc)[0]
    npr, wit = body[o_npr:o_wit], body[o_wit:o_cc]
    return blob[:2] + struct.pack("<IIQ", 16, 16 + len(npr), chain_id) + npr + wit


def v06_to_v084(blob):
    """[npr, witness, chain_config, public_keys] -> [npr, witness, chain_id, public_keys]."""
    body = blob[2:]
    o_npr, o_wit, o_cc, o_pk = struct.unpack_from("<4I", body, 0)
    chain_id = struct.unpack_from("<Q", body, o_cc)[0]
    npr, wit, keys = body[o_npr:o_wit], body[o_wit:o_cc], body[o_pk:]
    a = 20
    b = a + len(npr)
    c = b + len(wit)
    return blob[:2] + struct.pack("<IIQI", a, b, chain_id, c) + npr + wit + keys


def v21_to_v084(blob):
    """[npr, witness, chain_id] -> [npr, witness, chain_id, public_keys]."""
    exp_tx = _load_exp_tx()
    body = blob[2:]
    o_npr, o_wit = struct.unpack_from("<II", body, 0)
    chain_id = struct.unpack_from("<Q", body, 8)[0]
    npr, wit = body[o_npr:o_wit], body[o_wit:]
    keys = b""
    for raw in _transactions(npr):
        key = None
        try:
            tx = exp_tx.decode_transaction(raw)
            recid, h = exp_tx.signature_recovery_parameters(tx, chain_id)
            key = recover_pubkey(h, tx["r"], tx["s"], recid)
        except exp_tx.TxErr:
            pass
        keys += key or bytes(65)
    a = 20
    b = a + len(npr)
    c = b + len(wit)
    return blob[:2] + struct.pack("<IIQI", a, b, chain_id, c) + npr + wit + keys


# --- running ---------------------------------------------------------------

CATEGORIES = ("MAIN", "OPCODES", "PRECOMPILES", "MEMORY", "BASE", "TOTAL")


def run_ziskemu(elf, packed_input, tag):
    out = os.path.join(CMP, "out", tag + ".bin")
    os.makedirs(os.path.dirname(out), exist_ok=True)
    inp = out + ".in"
    with open(inp, "wb") as f:
        f.write(packed_input)
    if os.path.exists(out):
        os.remove(out)
    p = subprocess.run([ZISKEMU, "-e", elf, "-i", inp, "-o", out, "-X"],
                       capture_output=True, text=True)
    os.remove(inp)
    text = p.stdout + p.stderr
    res = {"rc": p.returncode}
    m = re.search(r"^STEPS\s+([\d,]+)", text, re.M)
    res["steps"] = int(m.group(1).replace(",", "")) if m else None
    for cat in CATEGORIES:
        m = re.search(rf"^{cat}\s+([\d,]+)", text, re.M)
        res[cat.lower()] = int(m.group(1).replace(",", "")) if m else None
    res["output"] = open(out, "rb").read() if os.path.exists(out) else b""
    return res


def job(args):
    guest, elf, packed, expected, tag = args
    r = run_ziskemu(elf, packed, tag)
    out = r.pop("output")
    r["guest"] = guest
    r["valid"] = out[:len(expected)] == expected
    r["succ"] = out[32] if len(out) > 32 else None
    return r


def run_grid(jobs, workers):
    with concurrent.futures.ThreadPoolExecutor(workers) as ex:
        return list(ex.map(job, jobs))


# --- experiments -----------------------------------------------------------

def cmd_devnet7(args):
    """devnet-7 blocks (the batch used in docs/ZISK-PROVE-BLOCK-FLAPJACK.md)."""
    archive = os.path.join(CMP, "115260-115269.tar.zst")
    download(DEVNET7_URL, archive, DEVNET7_SHA)
    arch_dir = os.path.join(CMP, "devnet7-archive")
    if not os.path.isdir(arch_dir):
        os.makedirs(arch_dir)
        subprocess.check_call(["tar", "--zstd", "-xf", archive, "-C", arch_dir])
    lo, hi = (int(x) for x in args.blocks.split("-"))
    blocks = []
    for n in range(lo, hi + 1):
        path = [os.path.join(dp, f) for dp, _, fs in os.walk(arch_dir) for f in fs
                if f.startswith(f"{n}-") and f.endswith(".json")][0]
        doc = json.load(open(path))
        blk = next(iter(doc.values()))["blocks"][0]
        blocks.append({
            "block": n,
            "gas_used": int(blk["blockHeader"]["gasUsed"], 16),
            "input": bytes.fromhex(blk["statelessInputBytes"][2:]),
            "expected": bytes.fromhex(blk["statelessOutputBytes"][2:]),
        })
    guests = [("pancake", args.pancake_elf)]
    if args.pancake_soft_elf:
        guests.append(("pancake-software", args.pancake_soft_elf))
    guests += [(g, elf_path(g)) for g in ("reth-f804dc1", "ethrex-v23.0.0")]
    jobs = []
    for b in blocks:
        for g, elf in guests:
            if g == "pancake-software" and b["block"] != lo:
                continue   # the software guest is ~24x slower; one block suffices
            jobs.append((g, elf, frame(b["input"]), b["expected"], f"devnet7-{b['block']}-{g}"))
    if args.current_pancake_elf:
        # The current guests on the same blocks, re-wrapped into their own layouts.
        # They implement newer rules than devnet-7 ran, so they are expected to
        # reject: the point is to show why the matched versions above are used.
        current = [("pancake@v21.0.1", args.current_pancake_elf, v06_to_v21)] + [
            (g, elf_path(g), v06_to_v084)
            for g in ("reth-0.1.0-rc.3", "ethrex-v27.0.0", "ethrex-v28.0.0")]
        for b in blocks:
            for g, elf, conv in current:
                jobs.append((g, elf, frame(conv(b["input"])), b"", f"devnet7-{b['block']}-{g}"))
    results = run_grid(jobs, args.jobs)
    for r, (_, _, _, _, tag) in zip(results, jobs):
        r["block"] = int(tag.split("-")[1])
    out = {"experiment": "devnet7", "gas_used": {b["block"]: b["gas_used"] for b in blocks},
           "results": results}
    json.dump(out, open(args.out, "w"), indent=1)
    print_table(json.load(open(args.out)))


def cmd_corpus(args):
    """Blocks of the tests-zkevm@v21.0.1 corpus, all guests at their current versions."""
    manifest = args.manifest
    rows = [l.rstrip("\n").split("\t") for l in open(manifest)]
    # Only blocks whose expected result is successful validation: a block every
    # guest rejects early says nothing about execution cost.
    sel = [r for r in rows if any(m in r[0] for m in args.match) and r[2][64:66] == "01"]
    if not sel:
        sys.exit("no successfully-validating manifest row matches --match")
    guests = [("pancake", args.pancake_elf)] + [
        (g, elf_path(g)) for g in ("reth-0.1.0-rc.3", "ethrex-v27.0.0", "ethrex-v28.0.0")]
    jobs, meta = [], {}
    for i, r in enumerate(sel):
        path = r[1] if os.path.isabs(r[1]) else os.path.join(ROOT, r[1])
        blob21 = unframe(open(path, "rb").read())
        blob084 = v21_to_v084(blob21)
        expected = bytes.fromhex(r[2])
        meta[i] = {"label": r[0], "input_bytes": len(blob21)}
        for g, elf in guests:
            packed = frame(blob21 if g == "pancake" else blob084)
            jobs.append((g, elf, packed, expected, f"corpus-{i}-{g}"))
    results = run_grid(jobs, args.jobs)
    for r, (_, _, _, _, tag) in zip(results, jobs):
        r["block"] = int(tag.split("-")[1])
    out = {"experiment": "corpus", "blocks": meta, "results": results}
    json.dump(out, open(args.out, "w"), indent=1)
    print_table(json.load(open(args.out)))


CURRENT = ("pancake@v21.0.1", "reth-0.1.0-rc.3", "ethrex-v27.0.0", "ethrex-v28.0.0")


def print_table(doc):
    results = [r for r in doc["results"]
               if not (doc["experiment"] == "devnet7" and r["guest"] in CURRENT)]
    current = [r for r in doc["results"]
               if doc["experiment"] == "devnet7" and r["guest"] in CURRENT]
    print_one(doc, results)
    if current:
        print("\nCurrent guests on the same blocks (succ = the result's success byte):\n")
        print("| block | " + " | ".join(CURRENT) + " |")
        print("| ---: |" + " :---: |" * len(CURRENT))
        by = {}
        for r in current:
            by.setdefault(r["block"], {})[r["guest"]] = r
        for b, row in by.items():
            print(f"| {b} | " + " | ".join(f"succ={row[g]['succ']}" for g in CURRENT) + " |")


def print_one(doc, results):
    by = {}
    for r in results:
        by.setdefault(r["block"], {})[r["guest"]] = r
    guests = []
    for r in results:
        if r["guest"] not in guests:
            guests.append(r["guest"])
    head = "| block | gas used |" + "".join(f" {g} steps | {g} cost |" for g in guests)
    sep = "| ---: | ---: |" + " ---: | ---: |" * len(guests)
    print(head)
    print(sep)
    for b, row in by.items():
        if doc["experiment"] == "devnet7":
            first = f"{b}"
            gas = f"{doc['gas_used'][str(b)]:,}"
        else:
            first = doc["blocks"][str(b)]["label"][:48]
            gas = f"{doc['blocks'][str(b)]['input_bytes']:,} B"
        cells = ""
        for g in guests:
            r = row.get(g)
            if r is None:
                cells += " | |"
            else:
                mark = "" if r["valid"] else " ✗"
                cells += f" {r['steps']:,}{mark} | {r['total'] / 1e9:.2f}G |"
        print(f"| {first} | {gas} |{cells}")


def cmd_table(args):
    print_table(json.load(open(args.file)))


def main():
    ap = argparse.ArgumentParser(description=__doc__.split("\n\n")[0])
    sub = ap.add_subparsers(dest="cmd", required=True)
    sub.add_parser("fetch").set_defaults(fn=cmd_fetch)
    d = sub.add_parser("devnet7")
    d.add_argument("--pancake-elf", required=True)
    d.add_argument("--pancake-soft-elf")
    d.add_argument("--current-pancake-elf",
                   help="also run the current guests on these blocks (they reject them)")
    d.add_argument("--blocks", default="115260-115269")
    d.add_argument("--jobs", type=int, default=6)
    d.add_argument("--out", default=os.path.join(CMP, "devnet7.json"))
    d.set_defaults(fn=cmd_devnet7)
    c = sub.add_parser("corpus")
    c.add_argument("--pancake-elf", required=True)
    c.add_argument("--manifest", default=os.path.join(ROOT, "work", "inputs-all", "manifest.tsv"))
    c.add_argument("--match", nargs="+", required=True)
    c.add_argument("--jobs", type=int, default=6)
    c.add_argument("--out", default=os.path.join(CMP, "corpus.json"))
    c.set_defaults(fn=cmd_corpus)
    t = sub.add_parser("table")
    t.add_argument("file")
    t.set_defaults(fn=cmd_table)
    args = ap.parse_args()
    args.fn(args)


if __name__ == "__main__":
    main()
