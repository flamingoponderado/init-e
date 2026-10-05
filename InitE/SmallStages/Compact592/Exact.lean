import InitE.SmallStages.Compact592.Complete
import InitE.SmallStages.Oracles592
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles592
namespace InitE.SmallStages.Compact592
theorem optimize592_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source592, oracle592) = optimized592 := by
  exact optimize592_eq.trans (by with_unfolding_all rfl)
#print axioms optimize592_exact
end InitE.SmallStages.Compact592
