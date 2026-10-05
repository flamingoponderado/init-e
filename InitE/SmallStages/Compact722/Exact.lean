import InitE.SmallStages.Compact722.Complete
import InitE.SmallStages.Oracles722
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles722
namespace InitE.SmallStages.Compact722
theorem optimize722_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source722, oracle722) = optimized722 := by
  exact optimize722_eq.trans (by with_unfolding_all rfl)
#print axioms optimize722_exact
end InitE.SmallStages.Compact722
