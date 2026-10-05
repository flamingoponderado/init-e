import InitE.SmallStages.Compact463.Complete
import InitE.SmallStages.Oracles463
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles463
namespace InitE.SmallStages.Compact463
theorem optimize463_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source463, oracle463) = optimized463 := by
  exact optimize463_eq.trans (by with_unfolding_all rfl)
#print axioms optimize463_exact
end InitE.SmallStages.Compact463
