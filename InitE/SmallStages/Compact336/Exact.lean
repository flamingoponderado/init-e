import InitE.SmallStages.Compact336.Complete
import InitE.SmallStages.Oracles336
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles336
namespace InitE.SmallStages.Compact336
theorem optimize336_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source336, oracle336) = optimized336 := by
  exact optimize336_eq.trans (by with_unfolding_all rfl)
#print axioms optimize336_exact
end InitE.SmallStages.Compact336
