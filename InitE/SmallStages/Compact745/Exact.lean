import InitE.CompactComputation
import InitE.SmallStages.Compact745.Complete
import InitE.SmallStages.Oracles745
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles745
namespace InitE.SmallStages.Compact745
theorem optimize745_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source745, oracle745) = optimized745 := by
  exact optimize745_eq.trans (by kernel_rfl)
#print axioms optimize745_exact
end InitE.SmallStages.Compact745
