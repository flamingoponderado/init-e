import InitE.WordStages.Optimize143
import InitE.ClashComputation
import InitE.WordStages.Source159
import InitE.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation InitE.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages
def optimizedBody159_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody159_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody159_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody159_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody159_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody159_0 optimizedBody159_3

def optimizedBody159_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody159_2 optimizedBody159_4

def optimizedBody159_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody159_1 optimizedBody159_5

def optimizedBody159_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody159_0 optimizedBody159_6

def oracle159 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
        (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
      Flapjack.Spt.ln))
def optimized159 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(159, 2, optimizedBody159_7)
theorem optimize159_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source159, oracle159) = optimized159 := by
  conv => lhs; cbv
  try rfl
#print axioms optimize159_eq
end InitE.WordStages
