import InitE.CompactComputation
import InitE.SmallStages.Compact564.Complete
import InitE.SmallStages.Oracles564
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles564
namespace InitE.SmallStages.Compact564
theorem optimize564_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source564, oracle564) = optimized564 := by
  exact optimize564_eq.trans (by kernel_rfl)
#print axioms optimize564_exact
end InitE.SmallStages.Compact564
