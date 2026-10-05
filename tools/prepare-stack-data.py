from pathlib import Path
import re
root=Path("InitE/StackAnalysis")
root.mkdir(exist_ok=True)
nums=[]
for src in sorted(Path("InitE/WordStages").glob("Optimize*.lean"),key=lambda p:int(re.search(r"\d+",p.stem)[0])):
 n=int(re.search(r"\d+",src.stem)[0]);nums.append(n)
 text=src.read_text(); defs=re.findall(r"(?ms)^def (optimized(?:Body)?\d+[^ :]*).*?(?=^def |^theorem |^#print|^end )",text)
 blocks=re.findall(r"(?ms)^def optimized(?:Body)?\d+[^ :]*.*?(?=^def |^theorem |^#print|^end )",text)
 header="import InitE.StackFrameComputation\nimport Flapjack.Compiler.Backend.WordDepth.AnalysisInput\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nset_option Elab.async false\nopen Flapjack Flapjack.Compiler.Backend\nnamespace InitE.StackAnalysis\n"
 extra = ""
 if n == 713:
  sparse=Path("InitE/WordStages/Sparse713/Data10.lean").read_text()
  extra="namespace Sparse713\n"+sparse[sparse.index("def word713_10_0"):sparse.rindex("end InitE.WordStages.Sparse713")]+"end Sparse713\n"
 (root/f"Data{n}.lean").write_text(header+extra+"".join(blocks)+"end InitE.StackAnalysis\n")
(root/"Data.lean").write_text("".join(f"import InitE.StackAnalysis.Data{n}\n" for n in nums)+"namespace InitE.StackAnalysis\ndef outputs := ["+", ".join(f"optimized{n}" for n in nums)+"]\nend InitE.StackAnalysis\n")
print(len(nums))
