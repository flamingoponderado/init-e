import InitE.CompactComputation
import InitE.SmallStages.Compact674.Complete
import InitE.SmallStages.Oracles674
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles674
namespace InitE.SmallStages.Compact674
theorem optimize674_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source674, oracle674) = optimized674 := by
  exact optimize674_eq.trans (by kernel_rfl)
#print axioms optimize674_exact
end InitE.SmallStages.Compact674
