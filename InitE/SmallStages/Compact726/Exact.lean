import InitE.SmallStages.Compact726.Complete
import InitE.SmallStages.Oracles726
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles726
namespace InitE.SmallStages.Compact726
theorem optimize726_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source726, oracle726) = optimized726 := by
  exact optimize726_eq.trans (by with_unfolding_all rfl)
#print axioms optimize726_exact
end InitE.SmallStages.Compact726
