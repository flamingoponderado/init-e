#!/usr/bin/env python3
"""Compose exact zero-target key collection and prove the final label lookup check."""
import pathlib,time,json,subprocess
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages"
groups=[([0,1,2,4,5,6],"Stubs")]+[(list(range(a,min(a+16,890))),f"{a}_{min(a+15,889)}") for a in range(64,890,16)]
header="set_option autoImplicit false\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nopen Flapjack Flapjack.Compiler.Backend\n"
insert="(fun key acc => sptInsert key () acc)"
def check(name,source):
 cert=work/f"{name}.check.json"
 if cert.exists() and json.loads(cert.read_text()).get("returncode")==0:return
 start=time.monotonic();r=subprocess.run(["rtk","proxy","python3",str(root/"tools/prepare-backend-lean.py"),"-o",str(root/f".lake/build/lib/lean/InitE/BackendStages/{name}.olean"),str(source)],cwd=root,text=True,capture_output=True)
 (work/f"{name}.check.log").write_text(r.stdout+r.stderr);cert.write_text(json.dumps(dict(returncode=r.returncode,seconds=time.monotonic()-start)));print(name,r.returncode,r.stdout+r.stderr,flush=True);r.check_returncode()
for ids,suffix in groups:
 for n in ids:
  dep=work/f"ZeroTargets{n}.check.json"
  while not dep.exists():time.sleep(5)
  if json.loads(dep.read_text())["returncode"]:raise RuntimeError(str(dep))
 while not (root/f".lake/build/lib/lean/InitE/BackendStages/FinalChunk{suffix}.olean").exists():time.sleep(5)
 name=f"ZeroChunkData{suffix}";source=root/f"InitE/BackendStages/{name}.lean"
 source.write_text("".join(f"import InitE.BackendStages.ZeroData{n}\n" for n in ids)+header.replace("open Flapjack Flapjack.Compiler.Backend", "open Flapjack")+f"namespace InitE.BackendStages.{name}\ndef keys : List Nat := ["+", ".join(f"ZeroData.keys{n}" for n in ids)+f"].flatten\nend InitE.BackendStages.{name}\n");check(name,source)
 name=f"ZeroChunk{suffix}";source=root/f"InitE/BackendStages/{name}.lean"
 s=f"import InitE.BackendStages.ZeroProgramCollection\nimport InitE.BackendStages.ZeroChunkData{suffix}\nimport InitE.BackendStages.FinalChunk{suffix}\n"+"".join(f"import InitE.BackendStages.ZeroTargets{n}\n" for n in ids)+header+f"namespace InitE.BackendStages.{name}\n"
 s+=f"theorem targets_eq : ZeroProgramCollection.targets FinalChunk{suffix}.padded = ZeroChunkData{suffix}.keys := by\n  unfold ZeroProgramCollection.targets\n  change ["+", ".join(f"Padded{n}.lines.filterMap ZeroCollection.lineTarget" for n in ids)+f"].flatten = ZeroChunkData{suffix}.keys\n  rw ["+", ".join(f"targets{n}_eq" for n in ids)+"]\n  rfl\n#print axioms targets_eq\nend InitE.BackendStages."+name+"\n";source.write_text(s);check(name,source)
count=len(groups);name="ZeroData";source=root/"InitE/BackendStages/ZeroData.lean"
s="".join(f"import InitE.BackendStages.ZeroChunkData{suffix}\n" for _,suffix in groups)+header.replace("open Flapjack Flapjack.Compiler.Backend", "open Flapjack")+"namespace InitE.BackendStages.ZeroData\n"+f"def keys{count} : List Nat := []\n"
for i,(_,suffix) in reversed(list(enumerate(groups))):s+=f"def allKeys{i} := ZeroChunkData{suffix}.keys ++ "+(f"allKeys{i+1}" if i+1<count else f"keys{count}")+"\n"
s+="def full := allKeys0\nend InitE.BackendStages.ZeroData\n";source.write_text(s);check(name,source)
name="ZeroValidity";source=root/f"InitE/BackendStages/{name}.lean"
s="import InitE.BackendStages.ZeroData\nimport InitE.BackendStages.TargetLabelsFinal\nimport InitE.BackendComputation\n"+header+"namespace InitE.BackendStages.ZeroValidity\n"
s+=f"theorem valid : (sptToAList (ZeroData.full.foldr {insert} .ln)).all (fun p => match sptLookup p.1 Target.labelsFinal with | none => false | some labels => (sptLookup 0 labels).isSome) = true := by\n  with_unfolding_all rfl\n#print axioms valid\nend InitE.BackendStages.ZeroValidity\n";source.write_text(s);check(name,source)
while not (root/".lake/build/lib/lean/InitE/BackendStages/Final.olean").exists():time.sleep(5)
name="ZeroLabels";source=root/f"InitE/BackendStages/{name}.lean"
s="import InitE.BackendStages.ZeroValidity\nimport InitE.BackendStages.Final\n"+"".join(f"import InitE.BackendStages.ZeroChunk{suffix}\n" for _,suffix in groups)+header+"namespace InitE.BackendStages.ZeroLabels\n"
s+=f"theorem suffix{count}_eq : ZeroProgramCollection.targets Final.padded{count} = ZeroData.keys{count} := by rfl\n"
for i,(_,suffix) in reversed(list(enumerate(groups))):
 s+=f"theorem suffix{i}_eq : ZeroProgramCollection.targets Final.padded{i} = ZeroData.allKeys{i} := by\n  unfold Final.padded{i} ZeroData.allKeys{i}\n  rw [ZeroProgramCollection.targets_append, ZeroChunk{suffix}.targets_eq, suffix{i+1}_eq]\n"
s+="theorem valid : LabToTarget.zeroLabsAccExist Target.labelsFinal Final.padded0 = true := by\n  unfold LabToTarget.zeroLabsAccExist LabToTarget.getZeroLabsAcc\n  rw [ZeroProgramCollection.fold_eq, suffix0_eq]\n  exact ZeroValidity.valid\n#print axioms valid\nend InitE.BackendStages.ZeroLabels\n";source.write_text(s);check(name,source)
