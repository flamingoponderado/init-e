import InitE.SmallStages.Compact515.Complete
import InitE.SmallStages.Oracles515
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles515
namespace InitE.SmallStages.Compact515
theorem optimize515_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source515, oracle515) = optimized515 := by
  exact optimize515_eq.trans (by with_unfolding_all rfl)
#print axioms optimize515_exact
end InitE.SmallStages.Compact515
