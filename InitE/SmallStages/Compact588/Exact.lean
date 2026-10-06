import InitE.SmallStages.Compact588.Complete
import InitE.SmallStages.Oracles588
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles588
namespace InitE.SmallStages.Compact588
theorem optimize588_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source588, oracle588) = optimized588 := by
  exact optimize588_eq.trans (by with_unfolding_all rfl)
#print axioms optimize588_exact
end InitE.SmallStages.Compact588
