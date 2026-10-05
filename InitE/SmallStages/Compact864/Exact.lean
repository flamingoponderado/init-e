import InitE.SmallStages.Compact864.Complete
import InitE.SmallStages.Oracles864
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles864
namespace InitE.SmallStages.Compact864
theorem optimize864_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source864, oracle864) = optimized864 := by
  exact optimize864_eq.trans (by with_unfolding_all rfl)
#print axioms optimize864_exact
end InitE.SmallStages.Compact864
