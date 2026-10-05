import InitE.SmallStages.Compact537.Complete
import InitE.SmallStages.Oracles537
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles537
namespace InitE.SmallStages.Compact537
theorem optimize537_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source537, oracle537) = optimized537 := by
  exact optimize537_eq.trans (by with_unfolding_all rfl)
#print axioms optimize537_exact
end InitE.SmallStages.Compact537
