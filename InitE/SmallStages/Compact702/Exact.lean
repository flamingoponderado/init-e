import InitE.CompactComputation
import InitE.SmallStages.Compact702.Complete
import InitE.SmallStages.Oracles702
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles702
namespace InitE.SmallStages.Compact702
theorem optimize702_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source702, oracle702) = optimized702 := by
  exact optimize702_eq.trans (by kernel_rfl)
#print axioms optimize702_exact
end InitE.SmallStages.Compact702
