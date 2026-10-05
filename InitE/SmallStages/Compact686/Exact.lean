import InitE.SmallStages.Compact686.Complete
import InitE.SmallStages.Oracles686
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles686
namespace InitE.SmallStages.Compact686
theorem optimize686_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source686, oracle686) = optimized686 := by
  exact optimize686_eq.trans (by with_unfolding_all rfl)
#print axioms optimize686_exact
end InitE.SmallStages.Compact686
