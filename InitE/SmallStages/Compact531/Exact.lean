import InitE.CompactComputation
import InitE.SmallStages.Compact531.Complete
import InitE.SmallStages.Oracles531
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles531
namespace InitE.SmallStages.Compact531
theorem optimize531_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source531, oracle531) = optimized531 := by
  exact optimize531_eq.trans (by kernel_rfl)
#print axioms optimize531_exact
end InitE.SmallStages.Compact531
