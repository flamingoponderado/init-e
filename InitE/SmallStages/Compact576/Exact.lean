import InitE.SmallStages.Compact576.Complete
import InitE.SmallStages.Oracles576
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles576
namespace InitE.SmallStages.Compact576
theorem optimize576_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source576, oracle576) = optimized576 := by
  exact optimize576_eq.trans (by with_unfolding_all rfl)
#print axioms optimize576_exact
end InitE.SmallStages.Compact576
