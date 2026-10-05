import InitE.SmallStages.Compact811.Complete
import InitE.SmallStages.Oracles811
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles811
namespace InitE.SmallStages.Compact811
theorem optimize811_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source811, oracle811) = optimized811 := by
  exact optimize811_eq.trans (by with_unfolding_all rfl)
#print axioms optimize811_exact
end InitE.SmallStages.Compact811
