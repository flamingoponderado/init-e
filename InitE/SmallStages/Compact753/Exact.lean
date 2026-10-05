import InitE.SmallStages.Compact753.Complete
import InitE.SmallStages.Oracles753
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles753
namespace InitE.SmallStages.Compact753
theorem optimize753_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source753, oracle753) = optimized753 := by
  exact optimize753_eq.trans (by with_unfolding_all rfl)
#print axioms optimize753_exact
end InitE.SmallStages.Compact753
