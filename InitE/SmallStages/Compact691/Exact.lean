import InitE.SmallStages.Compact691.Complete
import InitE.SmallStages.Oracles691
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles691
namespace InitE.SmallStages.Compact691
theorem optimize691_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source691, oracle691) = optimized691 := by
  exact optimize691_eq.trans (by with_unfolding_all rfl)
#print axioms optimize691_exact
end InitE.SmallStages.Compact691
