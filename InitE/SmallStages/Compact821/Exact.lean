import InitE.SmallStages.Compact821.Complete
import InitE.SmallStages.Oracles821
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles821
namespace InitE.SmallStages.Compact821
theorem optimize821_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source821, oracle821) = optimized821 := by
  exact optimize821_eq.trans (by with_unfolding_all rfl)
#print axioms optimize821_exact
end InitE.SmallStages.Compact821
