import InitE.CompactComputation
import InitE.SmallStages.Compact593.Complete
import InitE.SmallStages.Oracles593
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles593
namespace InitE.SmallStages.Compact593
theorem optimize593_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source593, oracle593) = optimized593 := by
  exact optimize593_eq.trans (by kernel_rfl)
#print axioms optimize593_exact
end InitE.SmallStages.Compact593
