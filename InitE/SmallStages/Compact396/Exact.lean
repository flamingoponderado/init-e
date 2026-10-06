import InitE.SmallStages.Compact396.Complete
import InitE.SmallStages.Oracles396
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles396
namespace InitE.SmallStages.Compact396
theorem optimize396_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source396, oracle396) = optimized396 := by
  exact optimize396_eq.trans (by with_unfolding_all rfl)
#print axioms optimize396_exact
end InitE.SmallStages.Compact396
