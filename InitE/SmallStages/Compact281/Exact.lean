import InitE.SmallStages.Compact281.Complete
import InitE.SmallStages.Oracles281
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles281
namespace InitE.SmallStages.Compact281
theorem optimize281_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source281, oracle281) = optimized281 := by
  exact optimize281_eq.trans (by with_unfolding_all rfl)
#print axioms optimize281_exact
end InitE.SmallStages.Compact281
