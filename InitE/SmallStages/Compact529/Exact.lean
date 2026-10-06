import InitE.CompactComputation
import InitE.SmallStages.Compact529.Complete
import InitE.SmallStages.Oracles529
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles529
namespace InitE.SmallStages.Compact529
theorem optimize529_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source529, oracle529) = optimized529 := by
  exact optimize529_eq.trans (by kernel_rfl)
#print axioms optimize529_exact
end InitE.SmallStages.Compact529
