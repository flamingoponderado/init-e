import InitE.SmallStages.Compact494.Complete
import InitE.SmallStages.Oracles494
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles494
namespace InitE.SmallStages.Compact494
theorem optimize494_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source494, oracle494) = optimized494 := by
  exact optimize494_eq.trans (by with_unfolding_all rfl)
#print axioms optimize494_exact
end InitE.SmallStages.Compact494
