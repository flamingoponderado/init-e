import InitE.SmallStages.Compact761.Complete
import InitE.SmallStages.Oracles761
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles761
namespace InitE.SmallStages.Compact761
theorem optimize761_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source761, oracle761) = optimized761 := by
  exact optimize761_eq.trans (by with_unfolding_all rfl)
#print axioms optimize761_exact
end InitE.SmallStages.Compact761
