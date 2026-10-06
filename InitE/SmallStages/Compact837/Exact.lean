import InitE.CompactComputation
import InitE.SmallStages.Compact837.Complete
import InitE.SmallStages.Oracles837
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles837
namespace InitE.SmallStages.Compact837
theorem optimize837_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source837, oracle837) = optimized837 := by
  exact optimize837_eq.trans (by kernel_rfl)
#print axioms optimize837_exact
end InitE.SmallStages.Compact837
