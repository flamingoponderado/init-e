import InitE.CompactComputation
import InitE.SmallStages.Compact543.Complete
import InitE.SmallStages.Oracles543
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles543
namespace InitE.SmallStages.Compact543
theorem optimize543_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source543, oracle543) = optimized543 := by
  exact optimize543_eq.trans (by kernel_rfl)
#print axioms optimize543_exact
end InitE.SmallStages.Compact543
