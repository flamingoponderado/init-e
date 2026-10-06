import InitE.CompactComputation
import InitE.SmallStages.Compact867.Complete
import InitE.SmallStages.Oracles867
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles867
namespace InitE.SmallStages.Compact867
theorem optimize867_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source867, oracle867) = optimized867 := by
  exact optimize867_eq.trans (by kernel_rfl)
#print axioms optimize867_exact
end InitE.SmallStages.Compact867
