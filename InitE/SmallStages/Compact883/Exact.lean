import InitE.SmallStages.Compact883.Complete
import InitE.SmallStages.Oracles883
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles883
namespace InitE.SmallStages.Compact883
theorem optimize883_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source883, oracle883) = optimized883 := by
  exact optimize883_eq.trans (by with_unfolding_all rfl)
#print axioms optimize883_exact
end InitE.SmallStages.Compact883
