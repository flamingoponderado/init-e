import InitE.SmallStages.Compact707.Complete
import InitE.SmallStages.Oracles707
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles707
namespace InitE.SmallStages.Compact707
theorem optimize707_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source707, oracle707) = optimized707 := by
  exact optimize707_eq.trans (by with_unfolding_all rfl)
#print axioms optimize707_exact
end InitE.SmallStages.Compact707
