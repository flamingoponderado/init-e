import InitE.CompactComputation
import InitE.SmallStages.Compact814.Complete
import InitE.SmallStages.Oracles814
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles814
namespace InitE.SmallStages.Compact814
theorem optimize814_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source814, oracle814) = optimized814 := by
  exact optimize814_eq.trans (by kernel_rfl)
#print axioms optimize814_exact
end InitE.SmallStages.Compact814
