import InitE.CompactComputation
import InitE.SmallStages.Compact681.Complete
import InitE.SmallStages.Oracles681
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles681
namespace InitE.SmallStages.Compact681
theorem optimize681_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source681, oracle681) = optimized681 := by
  exact optimize681_eq.trans (by kernel_rfl)
#print axioms optimize681_exact
end InitE.SmallStages.Compact681
