import InitE.SmallStages.Compact826.Complete
import InitE.SmallStages.Oracles826
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles826
namespace InitE.SmallStages.Compact826
theorem optimize826_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source826, oracle826) = optimized826 := by
  exact optimize826_eq.trans (by with_unfolding_all rfl)
#print axioms optimize826_exact
end InitE.SmallStages.Compact826
