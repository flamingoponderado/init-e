import InitE.SmallStages.Compact577.Complete
import InitE.SmallStages.Oracles577
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles577
namespace InitE.SmallStages.Compact577
theorem optimize577_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source577, oracle577) = optimized577 := by
  exact optimize577_eq.trans (by with_unfolding_all rfl)
#print axioms optimize577_exact
end InitE.SmallStages.Compact577
