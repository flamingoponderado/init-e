import InitE.CompactComputation
import InitE.SmallStages.Compact600.Complete
import InitE.SmallStages.Oracles600
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles600
namespace InitE.SmallStages.Compact600
theorem optimize600_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source600, oracle600) = optimized600 := by
  exact optimize600_eq.trans (by kernel_rfl)
#print axioms optimize600_exact
end InitE.SmallStages.Compact600
