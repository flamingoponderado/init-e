import InitE.CompactComputation
import InitE.SmallStages.Compact413.Complete
import InitE.SmallStages.Oracles413
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles413
namespace InitE.SmallStages.Compact413
theorem optimize413_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source413, oracle413) = optimized413 := by
  exact optimize413_eq.trans (by kernel_rfl)
#print axioms optimize413_exact
end InitE.SmallStages.Compact413
