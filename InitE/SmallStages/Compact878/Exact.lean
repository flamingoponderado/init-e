import InitE.SmallStages.Compact878.Complete
import InitE.SmallStages.Oracles878
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles878
namespace InitE.SmallStages.Compact878
theorem optimize878_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source878, oracle878) = optimized878 := by
  exact optimize878_eq.trans (by with_unfolding_all rfl)
#print axioms optimize878_exact
end InitE.SmallStages.Compact878
