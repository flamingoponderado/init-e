import InitE.SmallStages.Compact714.Complete
import InitE.SmallStages.Oracles714
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles714
namespace InitE.SmallStages.Compact714
theorem optimize714_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source714, oracle714) = optimized714 := by
  exact optimize714_eq.trans (by with_unfolding_all rfl)
#print axioms optimize714_exact
end InitE.SmallStages.Compact714
