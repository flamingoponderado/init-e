import InitE.WordStages.Optimize652
import InitE.ClashComputation
import InitE.WordStages.Source668
import InitE.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation InitE.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages
def optimizedBody668_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody668_1 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 659) ([0, 2, 4, 6, 8, 10, 12, 14, 16]) (none)

def optimizedBody668_2 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody668_0 optimizedBody668_1

def oracle668 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0 Flapjack.Spt.ln)
def optimized668 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(668, 9, optimizedBody668_2)
theorem optimize668_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source668, oracle668) = optimized668 := by
  conv => lhs; cbv
  try rfl
#print axioms optimize668_eq
end InitE.WordStages
