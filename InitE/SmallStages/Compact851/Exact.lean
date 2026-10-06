import InitE.CompactComputation
import InitE.SmallStages.Compact851.Complete
import InitE.SmallStages.Oracles851
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles851
namespace InitE.SmallStages.Compact851
theorem optimize851_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source851, oracle851) = optimized851 := by
  exact optimize851_eq.trans (by kernel_rfl)
#print axioms optimize851_exact
end InitE.SmallStages.Compact851
