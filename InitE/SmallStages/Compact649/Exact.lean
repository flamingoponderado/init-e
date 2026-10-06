import InitE.CompactComputation
import InitE.SmallStages.Compact649.Complete
import InitE.SmallStages.Oracles649
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles649
namespace InitE.SmallStages.Compact649
theorem optimize649_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source649, oracle649) = optimized649 := by
  exact optimize649_eq.trans (by kernel_rfl)
#print axioms optimize649_exact
end InitE.SmallStages.Compact649
