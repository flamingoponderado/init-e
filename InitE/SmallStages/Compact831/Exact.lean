import InitE.CompactComputation
import InitE.SmallStages.Compact831.Complete
import InitE.SmallStages.Oracles831
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles831
namespace InitE.SmallStages.Compact831
theorem optimize831_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source831, oracle831) = optimized831 := by
  exact optimize831_eq.trans (by kernel_rfl)
#print axioms optimize831_exact
end InitE.SmallStages.Compact831
