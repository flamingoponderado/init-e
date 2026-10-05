import InitE.SmallStages.Compact852.Complete
import InitE.SmallStages.Oracles852
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles852
namespace InitE.SmallStages.Compact852
theorem optimize852_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source852, oracle852) = optimized852 := by
  exact optimize852_eq.trans (by with_unfolding_all rfl)
#print axioms optimize852_exact
end InitE.SmallStages.Compact852
