import InitE.SmallStages.Compact464.Complete
import InitE.SmallStages.Oracles464
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles464
namespace InitE.SmallStages.Compact464
theorem optimize464_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source464, oracle464) = optimized464 := by
  exact optimize464_eq.trans (by with_unfolding_all rfl)
#print axioms optimize464_exact
end InitE.SmallStages.Compact464
