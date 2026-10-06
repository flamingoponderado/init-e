import InitE.CompactComputation
import InitE.SmallStages.Compact658.Complete
import InitE.SmallStages.Oracles658
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles658
namespace InitE.SmallStages.Compact658
theorem optimize658_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source658, oracle658) = optimized658 := by
  exact optimize658_eq.trans (by kernel_rfl)
#print axioms optimize658_exact
end InitE.SmallStages.Compact658
