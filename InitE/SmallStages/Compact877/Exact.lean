import InitE.SmallStages.Compact877.Complete
import InitE.SmallStages.Oracles877
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles877
namespace InitE.SmallStages.Compact877
theorem optimize877_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source877, oracle877) = optimized877 := by
  exact optimize877_eq.trans (by with_unfolding_all rfl)
#print axioms optimize877_exact
end InitE.SmallStages.Compact877
