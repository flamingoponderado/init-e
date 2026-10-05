import InitE.SmallStages.Compact383.Complete
import InitE.SmallStages.Oracles383
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles383
namespace InitE.SmallStages.Compact383
theorem optimize383_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source383, oracle383) = optimized383 := by
  exact optimize383_eq.trans (by with_unfolding_all rfl)
#print axioms optimize383_exact
end InitE.SmallStages.Compact383
