import InitE.SmallStages.Compact269.Complete
import InitE.SmallStages.Oracles269
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles269
namespace InitE.SmallStages.Compact269
theorem optimize269_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source269, oracle269) = optimized269 := by
  exact optimize269_eq.trans (by with_unfolding_all rfl)
#print axioms optimize269_exact
end InitE.SmallStages.Compact269
