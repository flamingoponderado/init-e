import InitE.CompactComputation
import InitE.SmallStages.Compact855.Complete
import InitE.SmallStages.Oracles855
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles855
namespace InitE.SmallStages.Compact855
theorem optimize855_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source855, oracle855) = optimized855 := by
  exact optimize855_eq.trans (by kernel_rfl)
#print axioms optimize855_exact
end InitE.SmallStages.Compact855
