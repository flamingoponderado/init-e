import InitE.SmallStages.Compact881.Complete
import InitE.SmallStages.Oracles881
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles881
namespace InitE.SmallStages.Compact881
theorem optimize881_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source881, oracle881) = optimized881 := by
  exact optimize881_eq.trans (by with_unfolding_all rfl)
#print axioms optimize881_exact
end InitE.SmallStages.Compact881
