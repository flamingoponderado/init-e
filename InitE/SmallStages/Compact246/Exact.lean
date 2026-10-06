import InitE.CompactComputation
import InitE.SmallStages.Compact246.Complete
import InitE.SmallStages.Oracles246
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles246
namespace InitE.SmallStages.Compact246
theorem optimize246_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source246, oracle246) = optimized246 := by
  exact optimize246_eq.trans (by kernel_rfl)
#print axioms optimize246_exact
end InitE.SmallStages.Compact246
