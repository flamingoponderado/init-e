import InitE.SmallStages.Compact554.Complete
import InitE.SmallStages.Oracles554
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles554
namespace InitE.SmallStages.Compact554
theorem optimize554_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source554, oracle554) = optimized554 := by
  exact optimize554_eq.trans (by with_unfolding_all rfl)
#print axioms optimize554_exact
end InitE.SmallStages.Compact554
