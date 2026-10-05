import InitE.SmallStages.Compact513.Complete
import InitE.SmallStages.Oracles513
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles513
namespace InitE.SmallStages.Compact513
theorem optimize513_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source513, oracle513) = optimized513 := by
  exact optimize513_eq.trans (by with_unfolding_all rfl)
#print axioms optimize513_exact
end InitE.SmallStages.Compact513
