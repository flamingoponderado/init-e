import InitE.CompactComputation
import InitE.SmallStages.Compact480.Complete
import InitE.SmallStages.Oracles480
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles480
namespace InitE.SmallStages.Compact480
theorem optimize480_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source480, oracle480) = optimized480 := by
  exact optimize480_eq.trans (by kernel_rfl)
#print axioms optimize480_exact
end InitE.SmallStages.Compact480
