from pathlib import Path
root=Path("InitE/CseStages713")
for stage in (3,4,5):
 s=Path(f"InitE/WordStages/Sparse713/Data{stage}.lean").read_text()
 body=s[s.index(f"def word713_{stage}_"):s.rindex("end InitE.WordStages.Sparse713")]
 module = "Flapjack.Compiler.Backend.WordCopy" if stage == 5 else "Flapjack.Compiler.Backend.WordCse.Transform"
 (root/f"Data{stage}.lean").write_text(f"import {module}\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nset_option Elab.async false\nopen Flapjack Flapjack.Compiler.Backend\nnamespace InitE.CseStages713\n"+body+"end InitE.CseStages713\n")
(root/"Definitional.lean").write_text('import InitE.CseStages713.Data3\nimport InitE.CseStages713.Data4\nimport Lean\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nset_option Elab.async false\nnamespace InitE.CseStages713\nopen Flapjack.Compiler.Backend\ntheorem definitional : WordCse.wordCommonSubexpElim pass713_3 = pass713_4 := by\n  with_unfolding_all rfl\n#print axioms definitional\nend InitE.CseStages713\n')
(root/"DefinitionalCopy.lean").write_text('import InitE.CseStages713.Data4\nimport InitE.CseStages713.Data5\nimport Lean\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nset_option Elab.async false\nnamespace InitE.CseStages713\nopen Flapjack.Compiler.Backend\ntheorem definitionalCopy : WordCopy.copyProp pass713_4 = pass713_5 := by\n  with_unfolding_all rfl\n#print axioms definitionalCopy\nend InitE.CseStages713\n')
