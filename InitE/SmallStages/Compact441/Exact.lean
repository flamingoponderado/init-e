import InitE.SmallStages.Compact441.Complete
import InitE.SmallStages.Oracles441
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles441
namespace InitE.SmallStages.Compact441
theorem optimize441_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source441, oracle441) = optimized441 := by
  exact optimize441_eq.trans (by with_unfolding_all rfl)
#print axioms optimize441_exact
end InitE.SmallStages.Compact441
