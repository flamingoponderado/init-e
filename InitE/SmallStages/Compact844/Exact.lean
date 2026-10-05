import InitE.SmallStages.Compact844.Complete
import InitE.SmallStages.Oracles844
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles844
namespace InitE.SmallStages.Compact844
theorem optimize844_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source844, oracle844) = optimized844 := by
  exact optimize844_eq.trans (by with_unfolding_all rfl)
#print axioms optimize844_exact
end InitE.SmallStages.Compact844
