import InitE.SmallStages.Compact815.Complete
import InitE.SmallStages.Oracles815
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles815
namespace InitE.SmallStages.Compact815
theorem optimize815_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source815, oracle815) = optimized815 := by
  exact optimize815_eq.trans (by with_unfolding_all rfl)
#print axioms optimize815_exact
end InitE.SmallStages.Compact815
