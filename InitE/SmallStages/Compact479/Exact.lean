import InitE.CompactComputation
import InitE.SmallStages.Compact479.Complete
import InitE.SmallStages.Oracles479
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles479
namespace InitE.SmallStages.Compact479
theorem optimize479_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source479, oracle479) = optimized479 := by
  exact optimize479_eq.trans (by kernel_rfl)
#print axioms optimize479_exact
end InitE.SmallStages.Compact479
