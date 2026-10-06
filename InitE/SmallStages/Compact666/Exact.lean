import InitE.CompactComputation
import InitE.SmallStages.Compact666.Complete
import InitE.SmallStages.Oracles666
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles666
namespace InitE.SmallStages.Compact666
theorem optimize666_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source666, oracle666) = optimized666 := by
  exact optimize666_eq.trans (by kernel_rfl)
#print axioms optimize666_exact
end InitE.SmallStages.Compact666
