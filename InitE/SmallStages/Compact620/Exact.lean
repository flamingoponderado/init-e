import InitE.SmallStages.Compact620.Complete
import InitE.SmallStages.Oracles620
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles620
namespace InitE.SmallStages.Compact620
theorem optimize620_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source620, oracle620) = optimized620 := by
  exact optimize620_eq.trans (by with_unfolding_all rfl)
#print axioms optimize620_exact
end InitE.SmallStages.Compact620
