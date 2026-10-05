import InitE.SmallStages.Compact750.Complete
import InitE.SmallStages.Oracles750
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles750
namespace InitE.SmallStages.Compact750
theorem optimize750_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source750, oracle750) = optimized750 := by
  exact optimize750_eq.trans (by with_unfolding_all rfl)
#print axioms optimize750_exact
end InitE.SmallStages.Compact750
