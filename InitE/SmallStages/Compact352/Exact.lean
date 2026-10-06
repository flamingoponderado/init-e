import InitE.CompactComputation
import InitE.SmallStages.Compact352.Complete
import InitE.SmallStages.Oracles352
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles352
namespace InitE.SmallStages.Compact352
theorem optimize352_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source352, oracle352) = optimized352 := by
  exact optimize352_eq.trans (by kernel_rfl)
#print axioms optimize352_exact
end InitE.SmallStages.Compact352
