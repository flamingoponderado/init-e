import InitE.CompactComputation
import InitE.SmallSsaKernelComputation
import InitE.CompilerStages
import InitE.WordStages.Optimize711
import InitE.ClashComputation
import InitE.WordStages.Source727
import InitE.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation InitE.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages
def optimizedBody727_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (0, 0)]

def optimizedBody727_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8, 10, 12]

def optimizedBody727_2 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody727_0 optimizedBody727_1

def oracle727 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
def optimized727 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(727, 7, optimizedBody727_2)
theorem optimize727_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source727, oracle727) = optimized727 := by
  rw [InitE.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitE.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize727_eq
end InitE.WordStages
