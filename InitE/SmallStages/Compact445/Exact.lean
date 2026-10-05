import InitE.SmallStages.Compact445.Complete
import InitE.SmallStages.Oracles445
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles445
namespace InitE.SmallStages.Compact445
theorem optimize445_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source445, oracle445) = optimized445 := by
  exact optimize445_eq.trans (by with_unfolding_all rfl)
#print axioms optimize445_exact
end InitE.SmallStages.Compact445
