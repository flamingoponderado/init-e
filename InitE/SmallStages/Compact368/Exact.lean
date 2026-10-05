import InitE.SmallStages.Compact368.Complete
import InitE.SmallStages.Oracles368
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles368
namespace InitE.SmallStages.Compact368
theorem optimize368_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source368, oracle368) = optimized368 := by
  exact optimize368_eq.trans (by with_unfolding_all rfl)
#print axioms optimize368_exact
end InitE.SmallStages.Compact368
