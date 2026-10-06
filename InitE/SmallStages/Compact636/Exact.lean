import InitE.CompactComputation
import InitE.SmallStages.Compact636.Complete
import InitE.SmallStages.Oracles636
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles636
namespace InitE.SmallStages.Compact636
theorem optimize636_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source636, oracle636) = optimized636 := by
  exact optimize636_eq.trans (by kernel_rfl)
#print axioms optimize636_exact
end InitE.SmallStages.Compact636
