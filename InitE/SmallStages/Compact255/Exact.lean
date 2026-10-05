import InitE.SmallStages.Compact255.Complete
import InitE.SmallStages.Oracles255
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles255
namespace InitE.SmallStages.Compact255
theorem optimize255_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source255, oracle255) = optimized255 := by
  exact optimize255_eq.trans (by with_unfolding_all rfl)
#print axioms optimize255_exact
end InitE.SmallStages.Compact255
