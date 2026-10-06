import InitE.CompactComputation
import InitE.SmallStages.Compact631.Complete
import InitE.SmallStages.Oracles631
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles631
namespace InitE.SmallStages.Compact631
theorem optimize631_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source631, oracle631) = optimized631 := by
  exact optimize631_eq.trans (by kernel_rfl)
#print axioms optimize631_exact
end InitE.SmallStages.Compact631
