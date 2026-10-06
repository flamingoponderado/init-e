import InitE.CompactComputation
import InitE.SmallStages.Compact858.Complete
import InitE.SmallStages.Oracles858
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles858
namespace InitE.SmallStages.Compact858
theorem optimize858_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source858, oracle858) = optimized858 := by
  exact optimize858_eq.trans (by kernel_rfl)
#print axioms optimize858_exact
end InitE.SmallStages.Compact858
