import InitE.SmallStages.Compact502.Complete
import InitE.SmallStages.Oracles502
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles502
namespace InitE.SmallStages.Compact502
theorem optimize502_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source502, oracle502) = optimized502 := by
  exact optimize502_eq.trans (by with_unfolding_all rfl)
#print axioms optimize502_exact
end InitE.SmallStages.Compact502
