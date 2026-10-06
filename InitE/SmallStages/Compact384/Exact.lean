import InitE.SmallStages.Compact384.Complete
import InitE.SmallStages.Oracles384
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles384
namespace InitE.SmallStages.Compact384
theorem optimize384_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source384, oracle384) = optimized384 := by
  exact optimize384_eq.trans (by with_unfolding_all rfl)
#print axioms optimize384_exact
end InitE.SmallStages.Compact384
