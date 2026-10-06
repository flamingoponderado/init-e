import InitE.CompactComputation
import InitE.SmallStages.Compact836.Complete
import InitE.SmallStages.Oracles836
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles836
namespace InitE.SmallStages.Compact836
theorem optimize836_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source836, oracle836) = optimized836 := by
  exact optimize836_eq.trans (by kernel_rfl)
#print axioms optimize836_exact
end InitE.SmallStages.Compact836
