import InitE.CompactComputation
import InitE.SmallStages.Compact454.Complete
import InitE.SmallStages.Oracles454
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles454
namespace InitE.SmallStages.Compact454
theorem optimize454_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source454, oracle454) = optimized454 := by
  exact optimize454_eq.trans (by kernel_rfl)
#print axioms optimize454_exact
end InitE.SmallStages.Compact454
