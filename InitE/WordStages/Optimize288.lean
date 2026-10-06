import InitE.CompactComputation
import InitE.SmallSsaKernelComputation
import InitE.CompilerStages
import InitE.WordStages.Optimize272
import InitE.ClashComputation
import InitE.WordStages.Source288
import InitE.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation InitE.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages
def optimizedBody288_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody288_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 2)

def optimizedBody288_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 5#64)

def optimizedBody288_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody288_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_0 optimizedBody288_3

def optimizedBody288_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_2 optimizedBody288_4

def optimizedBody288_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_1 optimizedBody288_5

def optimizedBody288_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody288_0 optimizedBody288_6

def oracle288 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bn (Flapjack.Spt.ls 1)
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
        (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
      Flapjack.Spt.ln))
def optimized288 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(288, 2, optimizedBody288_7)
theorem optimize288_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source288, oracle288) = optimized288 := by
  rw [InitE.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitE.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize288_eq
end InitE.WordStages
