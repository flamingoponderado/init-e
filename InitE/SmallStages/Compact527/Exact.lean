import InitE.CompactComputation
import InitE.SmallStages.Compact527.Complete
import InitE.SmallStages.Oracles527
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles527
namespace InitE.SmallStages.Compact527
theorem optimize527_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source527, oracle527) = optimized527 := by
  exact optimize527_eq.trans (by kernel_rfl)
#print axioms optimize527_exact
end InitE.SmallStages.Compact527
