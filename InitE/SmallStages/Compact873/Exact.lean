import InitE.SmallStages.Compact873.Complete
import InitE.SmallStages.Oracles873
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles873
namespace InitE.SmallStages.Compact873
theorem optimize873_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source873, oracle873) = optimized873 := by
  exact optimize873_eq.trans (by with_unfolding_all rfl)
#print axioms optimize873_exact
end InitE.SmallStages.Compact873
