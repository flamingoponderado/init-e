import InitE.SmallStages.Compact741.Complete
import InitE.SmallStages.Oracles741
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles741
namespace InitE.SmallStages.Compact741
theorem optimize741_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source741, oracle741) = optimized741 := by
  exact optimize741_eq.trans (by with_unfolding_all rfl)
#print axioms optimize741_exact
end InitE.SmallStages.Compact741
