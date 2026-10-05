import InitE.SmallStages.Compact630.Complete
import InitE.SmallStages.Oracles630
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles630
namespace InitE.SmallStages.Compact630
theorem optimize630_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source630, oracle630) = optimized630 := by
  exact optimize630_eq.trans (by with_unfolding_all rfl)
#print axioms optimize630_exact
end InitE.SmallStages.Compact630
