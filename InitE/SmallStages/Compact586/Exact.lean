import InitE.SmallStages.Compact586.Complete
import InitE.SmallStages.Oracles586
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles586
namespace InitE.SmallStages.Compact586
theorem optimize586_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source586, oracle586) = optimized586 := by
  exact optimize586_eq.trans (by with_unfolding_all rfl)
#print axioms optimize586_exact
end InitE.SmallStages.Compact586
