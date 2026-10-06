import InitE.CompactComputation
import InitE.SmallStages.Compact812.Complete
import InitE.SmallStages.Oracles812
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles812
namespace InitE.SmallStages.Compact812
theorem optimize812_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source812, oracle812) = optimized812 := by
  exact optimize812_eq.trans (by kernel_rfl)
#print axioms optimize812_exact
end InitE.SmallStages.Compact812
