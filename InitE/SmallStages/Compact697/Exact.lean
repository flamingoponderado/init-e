import InitE.CompactComputation
import InitE.SmallStages.Compact697.Complete
import InitE.SmallStages.Oracles697
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles697
namespace InitE.SmallStages.Compact697
theorem optimize697_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source697, oracle697) = optimized697 := by
  exact optimize697_eq.trans (by kernel_rfl)
#print axioms optimize697_exact
end InitE.SmallStages.Compact697
