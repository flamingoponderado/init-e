import InitE.SmallStages.Compact546.Complete
import InitE.SmallStages.Oracles546
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles546
namespace InitE.SmallStages.Compact546
theorem optimize546_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source546, oracle546) = optimized546 := by
  exact optimize546_eq.trans (by with_unfolding_all rfl)
#print axioms optimize546_exact
end InitE.SmallStages.Compact546
