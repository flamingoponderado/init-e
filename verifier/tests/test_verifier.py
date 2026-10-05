import json
import os
import sys
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from check_submission import check, claim, score_literal
from verify import (BUILD_SECONDS, WALL_SECONDS, VerifyError, freeze_submission,
                    limited_lake_command, linux_command, prepare_project, trusted_axioms)


class PolicyTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.root = Path(self.temp.name)
        (self.root / "InitECandidate").mkdir()
        (self.root / "Solution.lean").write_text("import InitECandidate.Program\n")
        (self.root / "InitECandidate" / "Program.lean").write_text("import InitE.Challenge\n")
        (self.root / "claim.json").write_text('{"K":"infinity"}')

    def tearDown(self):
        self.temp.cleanup()

    def test_infinity_and_finite(self):
        self.assertTrue(check(self.root)["ok"])
        self.assertEqual(score_literal(claim(self.root / "claim.json")), ".infinity")
        (self.root / "claim.json").write_text('{"K":123}')
        self.assertTrue(check(self.root)["ok"])
        self.assertEqual(score_literal(claim(self.root / "claim.json")), ".finite 123")

    def test_noncanonical_claims_rejected(self):
        for value in ['{"K":true}', '{"K":-1}', '{"K":1.5}', '{"K":"123"}',
                      '{"K":"Infinity"}', '{"K":1,"K":2}', '{"K":0,"extra":0}']:
            with self.subTest(value=value):
                (self.root / "claim.json").write_text(value)
                self.assertFalse(check(self.root)["ok"])

    def test_cross_prefix_import_rejected(self):
        (self.root / "InitECandidate" / "Program.lean").write_text("import InitECandidateX.Program\n")
        self.assertFalse(check(self.root)["ok"])

    def test_nested_comments_and_frozen_namespace(self):
        (self.root / "Solution.lean").write_text("/- outer /- nested -/ -/\nimport InitEBaselineCandidate.Program\n")
        self.assertFalse(check(self.root)["ok"])
        (self.root / "Solution.lean").write_text("/- outer /- nested -/ -/\nimport InitE.Challenge\n")
        self.assertTrue(check(self.root)["ok"])

    def test_extra_files_symlinks_and_module_headers_rejected(self):
        (self.root / "InitECandidate" / "Bad.lean").symlink_to("Program.lean")
        (self.root / "notes.zip").write_bytes(b"x")
        self.assertFalse(check(self.root)["ok"])
        (self.root / "InitECandidate" / "Bad.lean").unlink()
        (self.root / "notes.zip").unlink()
        (self.root / "Solution.lean").write_text("prelude\n")
        self.assertFalse(check(self.root)["ok"])


class FreezeTests(unittest.TestCase):
    def test_refuses_links_and_special_files(self):
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            source = root / "source"
            source.mkdir()
            (source / "linked").symlink_to("/etc/passwd")
            with self.assertRaises(VerifyError):
                freeze_submission(source, root / "frozen1")
            (source / "linked").unlink()
            os.mkfifo(source / "fifo")
            with self.assertRaises(VerifyError):
                freeze_submission(source, root / "frozen2")

    def test_limits_copy_and_preserves_bytes(self):
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            source = root / "source"
            source.mkdir()
            (source / "Solution.lean").write_bytes(b"0123456789")
            with patch("verify.MAX_FILE_BYTES", 8):
                with self.assertRaises(VerifyError):
                    freeze_submission(source, root / "small")
            freeze_submission(source, root / "frozen")
            self.assertEqual((root / "frozen" / "Solution.lean").read_bytes(), b"0123456789")

    def test_baseline_is_frozen_independently(self):
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            trusted, source = root / "trusted", root / "source"
            for directory in [trusted / "Guest", trusted / "InitE", trusted / "verifier",
                              trusted / "submission" / "InitECandidate", trusted / "tools", source / "InitECandidate"]:
                directory.mkdir(parents=True, exist_ok=True)
            for name in ["lean-toolchain", "lakefile.toml", "lake-manifest.json", "Guest.lean"]:
                (trusted / name).write_text("trusted")
            for name in ("lean-process-limit.c", "limited-lake.py"):
                (trusted / "tools" / name).write_text("trusted limiter " + name)
            (trusted / "Guest" / "guest.pp.pnk").write_text("fixed original source")
            (trusted / "InitE" / "Baseline.lean").write_text("import InitECandidate.Program\ndef trustedCode := InitECandidate.code\n")
            (trusted / "submission" / "InitECandidate" / "Program.lean").write_text("namespace InitECandidate\ndef code := [1,2]\n")
            (trusted / "verifier" / "TrustedAxioms.lean").write_text("audit")
            (trusted / "verifier" / "trusted-axioms.json").write_text("[]")
            (trusted / "verifier" / "comparator.json").write_text("{}")
            (trusted / "verifier" / "Challenge.lean.in").write_text("score := {{SCORE}}")
            (source / "Solution.lean").write_text("candidate proof")
            (source / "InitECandidate" / "Program.lean").write_text("namespace InitECandidate\ndef code := [9]\n")
            def clone(src, dst):
                cache = dst / "build" / "lib" / "lean" / "InitE"
                cache.mkdir(parents=True)
                (cache / "Stale.olean").write_bytes(b"old")
            with patch("verify.clone_tree", clone):
                digest = prepare_project(trusted, source, root / "project", {"K":"infinity"})
            project = root / "project"
            self.assertEqual(len(digest), 64)
            for name in ("lean-process-limit.c", "limited-lake.py"):
                self.assertEqual((project / "tools" / name).read_bytes(),
                                 (trusted / "tools" / name).read_bytes())
            (trusted / "tools" / "limited-lake.py").write_text("changed trusted limiter")
            with patch("verify.clone_tree", clone):
                changed = prepare_project(trusted, source, root / "project2", {"K":"infinity"})
            self.assertNotEqual(digest, changed)
            (trusted / "tools" / "lean-process-limit.c").unlink()
            with self.assertRaisesRegex(VerifyError, "trusted Lean limiter source missing"):
                prepare_project(trusted, source, root / "project3", {"K":"infinity"})
            self.assertEqual((project / "verifier" / "trusted-axioms.json").read_text(), "[]")
            baseline = (project / "baseline" / "InitEBaselineCandidate" / "Program.lean").read_text()
            self.assertIn("InitEBaselineCandidate", baseline)
            self.assertIn("[1,2]", baseline)
            self.assertIn("InitEBaselineCandidate.code", (project / "InitE" / "Baseline.lean").read_text())
            self.assertIn("[9]", (project / "submission" / "InitECandidate" / "Program.lean").read_text())
            self.assertEqual((project / "Guest" / "guest.pp.pnk").read_text(), "fixed original source")
            self.assertFalse((project / ".lake" / "build" / "lib" / "lean" / "InitE").exists())


class AxiomTests(unittest.TestCase):
    def setUp(self):
        self.pinned = json.loads((Path(__file__).resolve().parents[1] / "trusted-axioms.json").read_text())

    def test_only_standard_axioms_permitted(self):
        names = trusted_axioms("INIT_E_TRUSTED_AXIOMS " + json.dumps(self.pinned))
        self.assertEqual(set(names), {"propext", "Quot.sound", "Classical.choice"})

    def test_manifest_cannot_extend_standard_axioms(self):
        with tempfile.TemporaryDirectory() as temporary:
            manifest = Path(temporary) / "axioms.json"
            extended = self.pinned + ["InitE.native_check._native.native_decide.ax_1_1"]
            manifest.write_text(json.dumps(extended))
            with self.assertRaises(VerifyError):
                trusted_axioms("INIT_E_TRUSTED_AXIOMS " + json.dumps(extended), manifest)

    def test_missing_duplicate_and_unexpected_axioms_rejected(self):
        outputs = ["", "INIT_E_TRUSTED_AXIOMS []\nINIT_E_TRUSTED_AXIOMS []",
                   "INIT_E_TRUSTED_AXIOMS []"]
        for extra in ["sorryAx", "Candidate.assumption",
                      "Candidate.fake._native.native_decide.ax_1_1",
                      "Candidate.fake._native.bv_decide.ax_1_5",
                      "_private.Candidate.0.fake._native.native_decide.ax_1_1",
                      self.pinned[0]]:
            outputs.append("INIT_E_TRUSTED_AXIOMS " + json.dumps(self.pinned + [extra]))
        for output in outputs:
            with self.subTest(output=output), self.assertRaises(VerifyError):
                trusted_axioms(output)


if __name__ == "__main__":
    unittest.main()


class ResourceLimitTests(unittest.TestCase):
    def test_verifier_cpu_affinity_and_extended_limits(self):
        env = {"COMPARATOR_LANDRUN": "/usr/bin/true",
               "COMPARATOR_LEAN4EXPORT": "/usr/bin/true"}
        for available in (set(range(32)), {2, 5, 8}):
            with self.subTest(available=available), patch("verify.os.sched_getaffinity", return_value=available):
                command, _ = linux_command(["lake", "build"], Path("/tmp/project"), env, [])
                cpus = " ".join(map(str, sorted(available)[:16]))
                self.assertIn(f"CPUAffinity={cpus}", command)
                self.assertIn("RuntimeMaxSec=28800", command)
                self.assertIn(f"MemoryMax={112 * 1024**3}", command)
                self.assertIn("MemorySwapMax=0", command)
                self.assertIn("TasksMax=16384", command)
                self.assertIn("LAKE_ARTIFACT_CACHE=false", command)
        self.assertEqual(BUILD_SECONDS, 28800)
        self.assertEqual(WALL_SECONDS, 28800)

    def test_audit_and_comparator_use_project_local_limiter(self):
        project = Path("/tmp/frozen-project")
        for inner in (["lake", "build", "TrustedAxioms"],
                      ["lake", "env", "/trusted/comparator", "/tmp/comparator.json"]):
            with self.subTest(inner=inner):
                command = limited_lake_command(project, inner)
                self.assertEqual(command, [
                    sys.executable, str(project / "tools" / "limited-lake.py"),
                    "--work-dir", str(project / ".lake" / "lean-limit"),
                    "--slots", "16", "--", *inner])
