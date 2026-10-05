import InitE.SmallStages.Compact859.Complete
import InitE.SmallStages.Oracles859
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles859
namespace InitE.SmallStages.Compact859
theorem optimize859_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source859, oracle859) = optimized859 := by
  exact optimize859_eq.trans (by with_unfolding_all rfl)
#print axioms optimize859_exact
end InitE.SmallStages.Compact859
