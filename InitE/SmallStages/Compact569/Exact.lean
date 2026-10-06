import InitE.CompactComputation
import InitE.SmallStages.Compact569.Complete
import InitE.SmallStages.Oracles569
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles569
namespace InitE.SmallStages.Compact569
theorem optimize569_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source569, oracle569) = optimized569 := by
  exact optimize569_eq.trans (by kernel_rfl)
#print axioms optimize569_exact
end InitE.SmallStages.Compact569
