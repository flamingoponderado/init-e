import InitE.SmallStages.Compact735.Complete
import InitE.SmallStages.Oracles735
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles735
namespace InitE.SmallStages.Compact735
theorem optimize735_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source735, oracle735) = optimized735 := by
  exact optimize735_eq.trans (by with_unfolding_all rfl)
#print axioms optimize735_exact
end InitE.SmallStages.Compact735
