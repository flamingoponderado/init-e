import InitE.CompactComputation
import InitE.SmallStages.Compact335.Complete
import InitE.SmallStages.Oracles335
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles335
namespace InitE.SmallStages.Compact335
theorem optimize335_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source335, oracle335) = optimized335 := by
  exact optimize335_eq.trans (by kernel_rfl)
#print axioms optimize335_exact
end InitE.SmallStages.Compact335
