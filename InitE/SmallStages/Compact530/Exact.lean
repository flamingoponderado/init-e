import InitE.SmallStages.Compact530.Complete
import InitE.SmallStages.Oracles530
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles530
namespace InitE.SmallStages.Compact530
theorem optimize530_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source530, oracle530) = optimized530 := by
  exact optimize530_eq.trans (by with_unfolding_all rfl)
#print axioms optimize530_exact
end InitE.SmallStages.Compact530
