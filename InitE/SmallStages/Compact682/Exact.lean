import InitE.CompactComputation
import InitE.SmallStages.Compact682.Complete
import InitE.SmallStages.Oracles682
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles682
namespace InitE.SmallStages.Compact682
theorem optimize682_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source682, oracle682) = optimized682 := by
  exact optimize682_eq.trans (by kernel_rfl)
#print axioms optimize682_exact
end InitE.SmallStages.Compact682
