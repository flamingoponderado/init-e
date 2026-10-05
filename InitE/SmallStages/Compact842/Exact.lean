import InitE.SmallStages.Compact842.Complete
import InitE.SmallStages.Oracles842
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles842
namespace InitE.SmallStages.Compact842
theorem optimize842_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source842, oracle842) = optimized842 := by
  exact optimize842_eq.trans (by with_unfolding_all rfl)
#print axioms optimize842_exact
end InitE.SmallStages.Compact842
