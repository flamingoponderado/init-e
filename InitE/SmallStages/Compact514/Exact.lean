import InitE.CompactComputation
import InitE.SmallStages.Compact514.Complete
import InitE.SmallStages.Oracles514
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles514
namespace InitE.SmallStages.Compact514
theorem optimize514_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source514, oracle514) = optimized514 := by
  exact optimize514_eq.trans (by kernel_rfl)
#print axioms optimize514_exact
end InitE.SmallStages.Compact514
