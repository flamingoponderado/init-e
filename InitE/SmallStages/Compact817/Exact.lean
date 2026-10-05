import InitE.SmallStages.Compact817.Complete
import InitE.SmallStages.Oracles817
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles817
namespace InitE.SmallStages.Compact817
theorem optimize817_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source817, oracle817) = optimized817 := by
  exact optimize817_eq.trans (by with_unfolding_all rfl)
#print axioms optimize817_exact
end InitE.SmallStages.Compact817
