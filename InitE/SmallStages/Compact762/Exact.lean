import InitE.CompactComputation
import InitE.SmallStages.Compact762.Complete
import InitE.SmallStages.Oracles762
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles762
namespace InitE.SmallStages.Compact762
theorem optimize762_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source762, oracle762) = optimized762 := by
  exact optimize762_eq.trans (by kernel_rfl)
#print axioms optimize762_exact
end InitE.SmallStages.Compact762
