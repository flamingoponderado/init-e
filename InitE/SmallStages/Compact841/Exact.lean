import InitE.SmallStages.Compact841.Complete
import InitE.SmallStages.Oracles841
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles841
namespace InitE.SmallStages.Compact841
theorem optimize841_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source841, oracle841) = optimized841 := by
  exact optimize841_eq.trans (by with_unfolding_all rfl)
#print axioms optimize841_exact
end InitE.SmallStages.Compact841
