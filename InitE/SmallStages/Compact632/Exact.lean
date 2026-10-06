import InitE.SmallStages.Compact632.Complete
import InitE.SmallStages.Oracles632
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles632
namespace InitE.SmallStages.Compact632
theorem optimize632_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source632, oracle632) = optimized632 := by
  exact optimize632_eq.trans (by with_unfolding_all rfl)
#print axioms optimize632_exact
end InitE.SmallStages.Compact632
