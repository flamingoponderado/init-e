import InitE.CompactComputation
import InitE.SmallStages.Compact390.Complete
import InitE.SmallStages.Oracles390
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles390
namespace InitE.SmallStages.Compact390
theorem optimize390_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source390, oracle390) = optimized390 := by
  exact optimize390_eq.trans (by kernel_rfl)
#print axioms optimize390_exact
end InitE.SmallStages.Compact390
