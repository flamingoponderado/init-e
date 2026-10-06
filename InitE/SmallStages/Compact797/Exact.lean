import InitE.CompactComputation
import InitE.SmallStages.Compact797.Complete
import InitE.SmallStages.Oracles797
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles797
namespace InitE.SmallStages.Compact797
theorem optimize797_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source797, oracle797) = optimized797 := by
  exact optimize797_eq.trans (by kernel_rfl)
#print axioms optimize797_exact
end InitE.SmallStages.Compact797
