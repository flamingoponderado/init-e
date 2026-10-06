import InitE.CompactComputation
import InitE.SmallSsaKernelComputation
import InitE.CompilerStages
import InitE.WordStages.Optimize164
import InitE.ClashComputation
import InitE.WordStages.Source180
import InitE.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation InitE.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages
def optimizedBody180_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody180_1 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 175) ([0, 2]) (none)

def optimizedBody180_2 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody180_0 optimizedBody180_1

def oracle180 : Option (Spt Nat) :=
some (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0 Flapjack.Spt.ln)
def optimized180 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(180, 2, optimizedBody180_2)
theorem optimize180_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source180, oracle180) = optimized180 := by
  rw [InitE.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitE.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize180_eq
end InitE.WordStages
