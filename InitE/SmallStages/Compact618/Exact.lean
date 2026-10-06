import InitE.CompactComputation
import InitE.SmallStages.Compact618.Complete
import InitE.SmallStages.Oracles618
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles618
namespace InitE.SmallStages.Compact618
theorem optimize618_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source618, oracle618) = optimized618 := by
  exact optimize618_eq.trans (by kernel_rfl)
#print axioms optimize618_exact
end InitE.SmallStages.Compact618
