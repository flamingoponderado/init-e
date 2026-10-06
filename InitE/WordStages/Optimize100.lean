import InitE.CompactComputation
import InitE.SmallSsaKernelComputation
import InitE.CompilerStages
import InitE.WordStages.Optimize84
import InitE.ClashComputation
import InitE.WordStages.Source100
import InitE.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation InitE.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages
def optimizedBody100_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody100_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody100_2 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody100_0 optimizedBody100_1

def oracle100 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) Flapjack.Spt.ln))
def optimized100 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(100, 5, optimizedBody100_2)
theorem optimize100_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source100, oracle100) = optimized100 := by
  rw [InitE.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitE.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize100_eq
end InitE.WordStages
