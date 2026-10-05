import InitE.SmallStages.Compact406.Complete
import InitE.SmallStages.Oracles406
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles406
namespace InitE.SmallStages.Compact406
theorem optimize406_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source406, oracle406) = optimized406 := by
  exact optimize406_eq.trans (by with_unfolding_all rfl)
#print axioms optimize406_exact
end InitE.SmallStages.Compact406
