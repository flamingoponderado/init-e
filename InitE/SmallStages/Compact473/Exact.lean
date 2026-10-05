import InitE.SmallStages.Compact473.Complete
import InitE.SmallStages.Oracles473
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles473
namespace InitE.SmallStages.Compact473
theorem optimize473_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source473, oracle473) = optimized473 := by
  exact optimize473_eq.trans (by with_unfolding_all rfl)
#print axioms optimize473_exact
end InitE.SmallStages.Compact473
