import InitE.SmallStages.Compact575.Complete
import InitE.SmallStages.Oracles575
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles575
namespace InitE.SmallStages.Compact575
theorem optimize575_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source575, oracle575) = optimized575 := by
  exact optimize575_eq.trans (by with_unfolding_all rfl)
#print axioms optimize575_exact
end InitE.SmallStages.Compact575
