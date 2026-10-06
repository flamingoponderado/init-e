import InitE.SmallStages.Compact599.Complete
import InitE.SmallStages.Oracles599
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles599
namespace InitE.SmallStages.Compact599
theorem optimize599_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source599, oracle599) = optimized599 := by
  exact optimize599_eq.trans (by with_unfolding_all rfl)
#print axioms optimize599_exact
end InitE.SmallStages.Compact599
