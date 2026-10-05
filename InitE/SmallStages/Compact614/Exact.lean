import InitE.SmallStages.Compact614.Complete
import InitE.SmallStages.Oracles614
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles614
namespace InitE.SmallStages.Compact614
theorem optimize614_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source614, oracle614) = optimized614 := by
  exact optimize614_eq.trans (by with_unfolding_all rfl)
#print axioms optimize614_exact
end InitE.SmallStages.Compact614
