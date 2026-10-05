import InitE.SmallStages.Compact400.Complete
import InitE.SmallStages.Oracles400
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles400
namespace InitE.SmallStages.Compact400
theorem optimize400_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source400, oracle400) = optimized400 := by
  exact optimize400_eq.trans (by with_unfolding_all rfl)
#print axioms optimize400_exact
end InitE.SmallStages.Compact400
