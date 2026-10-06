import InitE.CompactComputation
import InitE.SmallStages.Compact399.Complete
import InitE.SmallStages.Oracles399
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles399
namespace InitE.SmallStages.Compact399
theorem optimize399_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source399, oracle399) = optimized399 := by
  exact optimize399_eq.trans (by kernel_rfl)
#print axioms optimize399_exact
end InitE.SmallStages.Compact399
