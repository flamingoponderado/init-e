import InitE.SmallStages.Compact578.Complete
import InitE.SmallStages.Oracles578
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles578
namespace InitE.SmallStages.Compact578
theorem optimize578_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source578, oracle578) = optimized578 := by
  exact optimize578_eq.trans (by with_unfolding_all rfl)
#print axioms optimize578_exact
end InitE.SmallStages.Compact578
