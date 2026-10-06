import InitE.CompactComputation
import InitE.SmallStages.Compact746.Complete
import InitE.SmallStages.Oracles746
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles746
namespace InitE.SmallStages.Compact746
theorem optimize746_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source746, oracle746) = optimized746 := by
  exact optimize746_eq.trans (by kernel_rfl)
#print axioms optimize746_exact
end InitE.SmallStages.Compact746
