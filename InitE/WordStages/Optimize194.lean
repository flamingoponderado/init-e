import InitE.WordStages.Optimize178
import InitE.ClashComputation
import InitE.WordStages.Source194
import InitE.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation InitE.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages
def optimizedBody194_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody194_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody194_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody194_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody194_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_2 optimizedBody194_3

def optimizedBody194_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_1 optimizedBody194_4

def optimizedBody194_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody194_0 optimizedBody194_5

def oracle194 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
        (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)))
      Flapjack.Spt.ln))
def optimized194 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(194, 2, optimizedBody194_6)
theorem optimize194_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source194, oracle194) = optimized194 := by
  conv => lhs; cbv
  try rfl
#print axioms optimize194_eq
end InitE.WordStages
