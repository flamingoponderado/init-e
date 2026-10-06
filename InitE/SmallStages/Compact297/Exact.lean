import InitE.CompactComputation
import InitE.SmallStages.Compact297.Complete
import InitE.SmallStages.Oracles297
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles297
namespace InitE.SmallStages.Compact297
theorem optimize297_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source297, oracle297) = optimized297 := by
  exact optimize297_eq.trans (by kernel_rfl)
#print axioms optimize297_exact
end InitE.SmallStages.Compact297
