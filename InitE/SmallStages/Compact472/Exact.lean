import InitE.SmallStages.Compact472.Complete
import InitE.SmallStages.Oracles472
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles472
namespace InitE.SmallStages.Compact472
theorem optimize472_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source472, oracle472) = optimized472 := by
  exact optimize472_eq.trans (by with_unfolding_all rfl)
#print axioms optimize472_exact
end InitE.SmallStages.Compact472
