import InitE.SmallStages.Compact829.Complete
import InitE.SmallStages.Oracles829
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles829
namespace InitE.SmallStages.Compact829
theorem optimize829_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source829, oracle829) = optimized829 := by
  exact optimize829_eq.trans (by with_unfolding_all rfl)
#print axioms optimize829_exact
end InitE.SmallStages.Compact829
