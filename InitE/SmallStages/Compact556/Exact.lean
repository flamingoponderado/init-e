import InitE.CompactComputation
import InitE.SmallStages.Compact556.Complete
import InitE.SmallStages.Oracles556
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles556
namespace InitE.SmallStages.Compact556
theorem optimize556_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source556, oracle556) = optimized556 := by
  exact optimize556_eq.trans (by kernel_rfl)
#print axioms optimize556_exact
end InitE.SmallStages.Compact556
