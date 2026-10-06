import InitE.CompactComputation
import InitE.SmallStages.Compact467.Complete
import InitE.SmallStages.Oracles467
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles467
namespace InitE.SmallStages.Compact467
theorem optimize467_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source467, oracle467) = optimized467 := by
  exact optimize467_eq.trans (by kernel_rfl)
#print axioms optimize467_exact
end InitE.SmallStages.Compact467
