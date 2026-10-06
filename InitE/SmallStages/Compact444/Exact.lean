import InitE.CompactComputation
import InitE.SmallStages.Compact444.Complete
import InitE.SmallStages.Oracles444
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles444
namespace InitE.SmallStages.Compact444
theorem optimize444_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source444, oracle444) = optimized444 := by
  exact optimize444_eq.trans (by kernel_rfl)
#print axioms optimize444_exact
end InitE.SmallStages.Compact444
