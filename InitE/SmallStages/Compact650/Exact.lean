import InitE.SmallStages.Compact650.Complete
import InitE.SmallStages.Oracles650
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles650
namespace InitE.SmallStages.Compact650
theorem optimize650_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source650, oracle650) = optimized650 := by
  exact optimize650_eq.trans (by with_unfolding_all rfl)
#print axioms optimize650_exact
end InitE.SmallStages.Compact650
