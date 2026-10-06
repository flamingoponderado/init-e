import InitE.SmallStages.Compact609.Complete
import InitE.SmallStages.Oracles609
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles609
namespace InitE.SmallStages.Compact609
theorem optimize609_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source609, oracle609) = optimized609 := by
  exact optimize609_eq.trans (by with_unfolding_all rfl)
#print axioms optimize609_exact
end InitE.SmallStages.Compact609
