import InitE.CompactComputation
import InitE.SmallStages.Compact876.Complete
import InitE.SmallStages.Oracles876
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles876
namespace InitE.SmallStages.Compact876
theorem optimize876_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source876, oracle876) = optimized876 := by
  exact optimize876_eq.trans (by kernel_rfl)
#print axioms optimize876_exact
end InitE.SmallStages.Compact876
