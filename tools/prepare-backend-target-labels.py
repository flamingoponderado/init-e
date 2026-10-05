#!/usr/bin/env python3
"""Generate checked local-label composition chunks without changing leaves."""
import argparse,csv,re
from pathlib import Path
p=argparse.ArgumentParser();p.add_argument("--phase",choices=["0","1","Final"],required=True);p.add_argument("--labels",nargs="*",type=int);p.add_argument("--tag",default="");a=p.parse_args()
root=Path(__file__).resolve().parents[1];base=root/"InitE/BackendStages/TargetChecks"
ids=[int(r[0]) for r in csv.reader((root/"InitE/BackendStages/TargetChecks/Positions0.csv").open())]
if a.labels:ids=[n for n in ids if n in a.labels]
entries=[]
for n in ids:
 prefix="Correct" if a.phase=="1" and n>=596 else ""
 module=f"InitE.BackendStages.AlignmentLabels{n}" if a.phase=="Final" else f"InitE.BackendStages.TargetChecks.{prefix}Labels{a.phase}_{n}"
 match=re.search(r"sectionLabels (\d+) ([\w.]+).lines \[\] = \((\d+), ([\w.]+)\)",(root/(module.replace(".","/")+".lean")).read_text())
 if not match:raise ValueError(module)
 ns="InitE.BackendStages" if a.phase=="Final" else "InitE.BackendStages.TargetChecks"+(".Correct" if prefix else "")
 sec=f"InitE.BackendStages.Alignment{n}" if a.phase=="Final" else (f"InitE.BackendStages.TargetChecks.Initial{n}" if a.phase=="0" else ns+f".Reencode0_{n}")
 local=ns+"."+match[4];entries.append((n,int(match[1]),int(match[3]),module,sec,local,local+"_eq"))
for x,y in zip(entries,entries[1:]):
 if x[2]!=y[1]:raise ValueError(f"Label position discontinuity {x[:3]} -> {y[:3]}")
chunks=[entries[k:k+32] for k in range(0,len(entries),32)]
for k,chunk in enumerate(chunks):
 ns=f"Labels{a.phase}.{a.tag}Chunk{k}"
 s="".join(f"import {e[3]}\n" for e in chunk)+"import InitE.BackendStages.TargetChecks.Composition\nset_option autoImplicit false\nset_option maxHeartbeats 0\nset_option maxRecDepth 1000000\nopen Flapjack Flapjack.Compiler.Backend\nnamespace InitE.BackendStages.TargetChecks\nnamespace "+ns+"\n"
 s+="def input : LabSem.LabProgHOL 64 := ["+", ".join(e[4] for e in chunk)+"]\n"
 before="before"
 for n,pos,nxt,module,sec,local,thm in chunk:before=f"(sptInsert {sec}.sectionId (sptFromAList ((0, {pos}) :: {local})) {before})"
 s+=f"def after (before : Spt (Spt Nat)) : Spt (Spt Nat) := {before}\n"
 s+=f"theorem labels_append (rest : LabSem.LabProgHOL 64) (before : Spt (Spt Nat)) :\n LabToTarget.computeLabelsAlt {chunk[0][1]} (input ++ rest) before =\n LabToTarget.computeLabelsAlt {chunk[-1][2]} rest (after before) := by\n  simp only [input, List.cons_append, List.nil_append]\n"
 before="before"
 for j,(n,pos,nxt,module,sec,local,thm) in enumerate(chunk):
  rem="("+" :: ".join([e[4] for e in chunk[j+1:]]+["rest"])+")"
  s+=f"  rw [labels_section_cons {pos} {nxt} {sec} {rem} {local} {before} {thm}]\n"
  before=f"(sptInsert {sec}.sectionId (sptFromAList ((0, {pos}) :: {local})) {before})"
 s+=f"  rfl\n#print axioms labels_append\nend {ns}\nend InitE.BackendStages.TargetChecks\n"
 (base/f"Labels{a.phase}{a.tag}Chunk{k}.lean").write_text(s)
print(f"Prepared {len(chunks)} phase{a.phase} label composition chunks")
