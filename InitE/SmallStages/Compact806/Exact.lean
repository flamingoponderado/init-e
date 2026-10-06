import InitE.SmallStages.Compact806.Complete
import InitE.SmallStages.Oracles806
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles806
namespace InitE.SmallStages.Compact806
theorem optimize806_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source806, oracle806) = optimized806 := by
  exact optimize806_eq.trans (by with_unfolding_all rfl)
#print axioms optimize806_exact
end InitE.SmallStages.Compact806
