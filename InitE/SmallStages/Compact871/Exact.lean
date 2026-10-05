import InitE.SmallStages.Compact871.Complete
import InitE.SmallStages.Oracles871
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles871
namespace InitE.SmallStages.Compact871
theorem optimize871_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source871, oracle871) = optimized871 := by
  exact optimize871_eq.trans (by with_unfolding_all rfl)
#print axioms optimize871_exact
end InitE.SmallStages.Compact871
