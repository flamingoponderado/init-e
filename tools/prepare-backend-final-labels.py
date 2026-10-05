#!/usr/bin/env python3
"""Certify local label tables after final alignment for target aggregate composition."""
import pathlib,subprocess,json,time,re,concurrent.futures
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages"
def process(n):
 name=f"AlignmentLabels{n}";cert=work/f"{name}.check.json"
 if cert.exists() and json.loads(cert.read_text()).get("returncode")==0:return
 prior=root/f".lake/build/lib/lean/InitE/BackendStages/Alignment{n}.olean"
 while not prior.exists() or not (root/f"InitE/BackendStages/Alignment{n}.lean").exists() or not (work/f"Alignment{n}.check.json").exists():time.sleep(5)
 original=(root/f"InitE/BackendStages/Alignment{n}.lean").read_text();position=int(re.search(r"linesUpdLabLen (\d+)",original).group(1))
 runner=work/f"GenerateAlignmentLabels{n}.lean"
 runner.write_text(f"import Tools.GenBackendStages\nimport InitE.BackendStages.Alignment{n}\nopen Lean Flapjack Flapjack.Compiler.Backend\nrun_meta do\n  let env ← Lean.getEnv\n  let (next, labels) := LabToTarget.sectionLabels {position} InitE.BackendStages.Alignment{n}.lines []\n  let text ← liftM (renderWordStage env (toExpr labels))\n  liftM (IO.FS.writeFile \"InitE/BackendStages/{name}.lean\" (\"import InitE.BackendStages.Alignment{n}\\nset_option maxRecDepth 1000000\\nset_option maxHeartbeats 0\\nopen Flapjack Flapjack.Compiler.Backend\\nnamespace InitE.BackendStages\\ndef localLabelsFinal_{n} : List (Nat × Nat) :=\\n\" ++ text ++ s!\"\\ntheorem localLabelsFinal_{n}_eq : LabToTarget.sectionLabels {position} Alignment{n}.lines [] = ({{next}}, localLabelsFinal_{n}) := by\\n  with_unfolding_all rfl\\n#print axioms localLabelsFinal_{n}_eq\\nend InitE.BackendStages\\n\"))\n")
 for label,source,out in [(f"GenerateAlignmentLabels{n}",runner,None),(name,root/f"InitE/BackendStages/{name}.lean",root/f".lake/build/lib/lean/InitE/BackendStages/{name}.olean")]:
  command=["rtk","proxy","python3",str(root/"tools/prepare-backend-lean.py")]
  if out:command += ["-o",str(out)]
  start=time.monotonic();r=subprocess.run(command+[str(source)],cwd=root,text=True,capture_output=True)
  (work/f"{label}.check.log").write_text(r.stdout+r.stderr);(work/f"{label}.check.json").write_text(json.dumps(dict(returncode=r.returncode,seconds=time.monotonic()-start)));print(label,r.returncode,flush=True);r.check_returncode()

with concurrent.futures.ThreadPoolExecutor(max_workers=4) as pool:
 list(pool.map(process,[0,1,2,4,5,6]+list(range(64,890))))
