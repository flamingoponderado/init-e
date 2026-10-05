import InitE.SmallStages.Compact689.Complete
import InitE.SmallStages.Oracles689
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles689
namespace InitE.SmallStages.Compact689
theorem optimize689_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source689, oracle689) = optimized689 := by
  exact optimize689_eq.trans (by with_unfolding_all rfl)
#print axioms optimize689_exact
end InitE.SmallStages.Compact689
