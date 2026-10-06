import InitE.CompactComputation
import InitE.SmallStages.Compact561.Complete
import InitE.SmallStages.Oracles561
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles561
namespace InitE.SmallStages.Compact561
theorem optimize561_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source561, oracle561) = optimized561 := by
  exact optimize561_eq.trans (by kernel_rfl)
#print axioms optimize561_exact
end InitE.SmallStages.Compact561
