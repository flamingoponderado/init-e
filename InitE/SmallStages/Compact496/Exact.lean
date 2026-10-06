import InitE.CompactComputation
import InitE.SmallStages.Compact496.Complete
import InitE.SmallStages.Oracles496
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles496
namespace InitE.SmallStages.Compact496
theorem optimize496_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source496, oracle496) = optimized496 := by
  exact optimize496_eq.trans (by kernel_rfl)
#print axioms optimize496_exact
end InitE.SmallStages.Compact496
