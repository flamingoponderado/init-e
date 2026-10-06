import InitE.CompactComputation
import InitE.SmallStages.Compact839.Complete
import InitE.SmallStages.Oracles839
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles839
namespace InitE.SmallStages.Compact839
theorem optimize839_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source839, oracle839) = optimized839 := by
  exact optimize839_eq.trans (by kernel_rfl)
#print axioms optimize839_exact
end InitE.SmallStages.Compact839
