import InitE.SmallStages.Compact349.Complete
import InitE.SmallStages.Oracles349
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles349
namespace InitE.SmallStages.Compact349
theorem optimize349_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source349, oracle349) = optimized349 := by
  exact optimize349_eq.trans (by with_unfolding_all rfl)
#print axioms optimize349_exact
end InitE.SmallStages.Compact349
