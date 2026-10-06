import InitE.CompactComputation
import InitE.SmallStages.Compact794.Complete
import InitE.SmallStages.Oracles794
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles794
namespace InitE.SmallStages.Compact794
theorem optimize794_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source794, oracle794) = optimized794 := by
  exact optimize794_eq.trans (by kernel_rfl)
#print axioms optimize794_exact
end InitE.SmallStages.Compact794
