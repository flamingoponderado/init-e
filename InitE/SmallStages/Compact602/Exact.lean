import InitE.CompactComputation
import InitE.SmallStages.Compact602.Complete
import InitE.SmallStages.Oracles602
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles602
namespace InitE.SmallStages.Compact602
theorem optimize602_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source602, oracle602) = optimized602 := by
  exact optimize602_eq.trans (by kernel_rfl)
#print axioms optimize602_exact
end InitE.SmallStages.Compact602
