import InitE.SmallStages.Compact625.Complete
import InitE.SmallStages.Oracles625
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles625
namespace InitE.SmallStages.Compact625
theorem optimize625_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source625, oracle625) = optimized625 := by
  exact optimize625_eq.trans (by with_unfolding_all rfl)
#print axioms optimize625_exact
end InitE.SmallStages.Compact625
