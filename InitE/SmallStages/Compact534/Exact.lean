import InitE.CompactComputation
import InitE.SmallStages.Compact534.Complete
import InitE.SmallStages.Oracles534
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles534
namespace InitE.SmallStages.Compact534
theorem optimize534_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source534, oracle534) = optimized534 := by
  exact optimize534_eq.trans (by kernel_rfl)
#print axioms optimize534_exact
end InitE.SmallStages.Compact534
