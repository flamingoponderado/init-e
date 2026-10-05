import InitE.SmallStages.Compact584.Complete
import InitE.SmallStages.Oracles584
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles584
namespace InitE.SmallStages.Compact584
theorem optimize584_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source584, oracle584) = optimized584 := by
  exact optimize584_eq.trans (by with_unfolding_all rfl)
#print axioms optimize584_exact
end InitE.SmallStages.Compact584
