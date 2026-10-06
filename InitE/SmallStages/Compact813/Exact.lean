import InitE.CompactComputation
import InitE.SmallStages.Compact813.Complete
import InitE.SmallStages.Oracles813
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles813
namespace InitE.SmallStages.Compact813
theorem optimize813_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source813, oracle813) = optimized813 := by
  exact optimize813_eq.trans (by kernel_rfl)
#print axioms optimize813_exact
end InitE.SmallStages.Compact813
