import InitE.SmallStages.Compact820.Complete
import InitE.SmallStages.Oracles820
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles820
namespace InitE.SmallStages.Compact820
theorem optimize820_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source820, oracle820) = optimized820 := by
  exact optimize820_eq.trans (by with_unfolding_all rfl)
#print axioms optimize820_exact
end InitE.SmallStages.Compact820
