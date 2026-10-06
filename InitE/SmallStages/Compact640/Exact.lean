import InitE.CompactComputation
import InitE.SmallStages.Compact640.Complete
import InitE.SmallStages.Oracles640
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles640
namespace InitE.SmallStages.Compact640
theorem optimize640_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source640, oracle640) = optimized640 := by
  exact optimize640_eq.trans (by kernel_rfl)
#print axioms optimize640_exact
end InitE.SmallStages.Compact640
