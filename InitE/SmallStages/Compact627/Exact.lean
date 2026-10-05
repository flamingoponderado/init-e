import InitE.SmallStages.Compact627.Complete
import InitE.SmallStages.Oracles627
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles627
namespace InitE.SmallStages.Compact627
theorem optimize627_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source627, oracle627) = optimized627 := by
  exact optimize627_eq.trans (by with_unfolding_all rfl)
#print axioms optimize627_exact
end InitE.SmallStages.Compact627
