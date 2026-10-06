import InitE.SmallStages.Compact320.Complete
import InitE.SmallStages.Oracles320
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles320
namespace InitE.SmallStages.Compact320
theorem optimize320_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source320, oracle320) = optimized320 := by
  exact optimize320_eq.trans (by with_unfolding_all rfl)
#print axioms optimize320_exact
end InitE.SmallStages.Compact320
