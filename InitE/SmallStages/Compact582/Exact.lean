import InitE.CompactComputation
import InitE.SmallStages.Compact582.Complete
import InitE.SmallStages.Oracles582
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles582
namespace InitE.SmallStages.Compact582
theorem optimize582_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source582, oracle582) = optimized582 := by
  exact optimize582_eq.trans (by kernel_rfl)
#print axioms optimize582_exact
end InitE.SmallStages.Compact582
