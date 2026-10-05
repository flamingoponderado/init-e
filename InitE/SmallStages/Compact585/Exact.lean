import InitE.SmallStages.Compact585.Complete
import InitE.SmallStages.Oracles585
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles585
namespace InitE.SmallStages.Compact585
theorem optimize585_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source585, oracle585) = optimized585 := by
  exact optimize585_eq.trans (by with_unfolding_all rfl)
#print axioms optimize585_exact
end InitE.SmallStages.Compact585
