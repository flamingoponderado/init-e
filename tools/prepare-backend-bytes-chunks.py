#!/usr/bin/env python3
"""Compose exact section byte outputs through small program chunks."""
import pathlib,time,json,subprocess
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages"
groups=[([0,1,2,4,5,6],"Stubs")]+[(list(range(a,min(a+16,890))),f"{a}_{min(a+15,889)}") for a in range(64,890,16)]
header="set_option autoImplicit false\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nopen Flapjack Flapjack.Compiler.Backend\n"
def check(name,source):
 cert=work/f"{name}.check.json"
 if cert.exists() and json.loads(cert.read_text()).get("returncode")==0:return
 start=time.monotonic();r=subprocess.run(["rtk","proxy","python3",str(root/"tools/prepare-backend-lean.py"),"-o",str(root/f".lake/build/lib/lean/InitE/BackendStages/{name}.olean"),str(source)],cwd=root,text=True,capture_output=True)
 (work/f"{name}.check.log").write_text(r.stdout+r.stderr);cert.write_text(json.dumps(dict(returncode=r.returncode,seconds=time.monotonic()-start)));print(name,r.returncode,flush=True);r.check_returncode()
for ids,suffix in groups:
 for n in ids:
  dep=work/f"Bytes{n}.check.json"
  while not dep.exists():time.sleep(5)
  if json.loads(dep.read_text())["returncode"]:raise RuntimeError(str(dep))
 while not (root/f".lake/build/lib/lean/InitE/BackendStages/FinalChunk{suffix}.olean").exists():time.sleep(5)
 name=f"BytesChunkData{suffix}";source=root/f"InitE/BackendStages/{name}.lean"
 source.write_text("".join(f"import InitE.BackendStages.BytesData{n}\n" for n in ids)+header+f"namespace InitE.BackendStages.{name}\ndef bytes : List (BitVec 8) := ["+", ".join(f"ByteData.bytes{n}" for n in ids)+f"].flatten\nend InitE.BackendStages.{name}\n");check(name,source)
 name=f"BytesChunk{suffix}";source=root/f"InitE/BackendStages/{name}.lean"
 s=f"import InitE.BackendStages.BytesChunkData{suffix}\nimport InitE.BackendStages.FinalChunk{suffix}\n"+"".join(f"import InitE.BackendStages.Bytes{n}\n" for n in ids)+header+f"namespace InitE.BackendStages.{name}\n"
 s+=f"theorem compiled_eq : LabToTarget.progToBytes FinalChunk{suffix}.padded = BytesChunkData{suffix}.bytes := by\n  rw [LabToTarget.progToBytesMap]\n  change ["+", ".join(f"(Padded{n}.lines.map LabToTarget.lineBytes).flatten" for n in ids)+f"].flatten = BytesChunkData{suffix}.bytes\n  rw ["+", ".join(f"sectionBytes{n}_eq" for n in ids)+"]\n  rfl\n#print axioms compiled_eq\nend InitE.BackendStages."+name+"\n";source.write_text(s);check(name,source)
# Thin data aggregate can be used before importing the complete compiler proof closure.
count=len(groups);name="BytesData";source=root/"InitE/BackendStages/BytesData.lean"
s="".join(f"import InitE.BackendStages.BytesChunkData{suffix}\n" for _,suffix in groups)+header+"namespace InitE.BackendStages.ByteData\n"+f"def chunks{count} : List (BitVec 8) := []\n"
for i,(_,suffix) in reversed(list(enumerate(groups))):s+=f"def chunks{i} := BytesChunkData{suffix}.bytes ++ chunks{i+1}\n"
s+="def full := chunks0\nend InitE.BackendStages.ByteData\n";source.write_text(s);check(name,source)
while not (root/".lake/build/lib/lean/InitE/BackendStages/Final.olean").exists():time.sleep(5)
name="Bytes";source=root/"InitE/BackendStages/Bytes.lean"
s="import InitE.BackendStages.BytesData\nimport InitE.BackendStages.Final\n"+"".join(f"import InitE.BackendStages.BytesChunk{suffix}\n" for _,suffix in groups)+header+"namespace InitE.BackendStages.Bytes\n"+f"theorem suffix{count}_eq : LabToTarget.progToBytes Final.padded{count} = ByteData.chunks{count} := by rw [LabToTarget.progToBytesMap]; rfl\n"
for i,(_,suffix) in reversed(list(enumerate(groups))):
 s+=f"theorem suffix{i}_eq : LabToTarget.progToBytes Final.padded{i} = ByteData.chunks{i} := by\n  unfold Final.padded{i} ByteData.chunks{i}\n  rw [Composition.progToBytes_append, BytesChunk{suffix}.compiled_eq, suffix{i+1}_eq]\n"
s+="theorem compile_eq : LabToTarget.progToBytes Final.padded0 = ByteData.full := by simpa only [ByteData.full] using suffix0_eq\n#print axioms compile_eq\nend InitE.BackendStages.Bytes\n";source.write_text(s);check(name,source)
