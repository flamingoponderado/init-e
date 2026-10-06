import InitE.CompactComputation
import InitE.SmallStages.Compact823.Complete
import InitE.SmallStages.Oracles823
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles823
namespace InitE.SmallStages.Compact823
theorem optimize823_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source823, oracle823) = optimized823 := by
  exact optimize823_eq.trans (by kernel_rfl)
#print axioms optimize823_exact
end InitE.SmallStages.Compact823
