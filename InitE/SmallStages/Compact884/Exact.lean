import InitE.CompactComputation
import InitE.SmallStages.Compact884.Complete
import InitE.SmallStages.Oracles884
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles884
namespace InitE.SmallStages.Compact884
theorem optimize884_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source884, oracle884) = optimized884 := by
  exact optimize884_eq.trans (by kernel_rfl)
#print axioms optimize884_exact
end InitE.SmallStages.Compact884
