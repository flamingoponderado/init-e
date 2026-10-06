import InitE.CompactComputation
import InitE.SmallStages.Compact579.Complete
import InitE.SmallStages.Oracles579
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles579
namespace InitE.SmallStages.Compact579
theorem optimize579_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source579, oracle579) = optimized579 := by
  exact optimize579_eq.trans (by kernel_rfl)
#print axioms optimize579_exact
end InitE.SmallStages.Compact579
