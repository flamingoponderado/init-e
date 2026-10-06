import InitE.SmallStages.Compact596.Complete
import InitE.SmallStages.Oracles596
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles596
namespace InitE.SmallStages.Compact596
theorem optimize596_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source596, oracle596) = optimized596 := by
  exact optimize596_eq.trans (by with_unfolding_all rfl)
#print axioms optimize596_exact
end InitE.SmallStages.Compact596
