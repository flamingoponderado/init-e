import InitE.SmallStages.Compact553.Complete
import InitE.SmallStages.Oracles553
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles553
namespace InitE.SmallStages.Compact553
theorem optimize553_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source553, oracle553) = optimized553 := by
  exact optimize553_eq.trans (by with_unfolding_all rfl)
#print axioms optimize553_exact
end InitE.SmallStages.Compact553
