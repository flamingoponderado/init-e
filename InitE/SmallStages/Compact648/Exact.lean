import InitE.CompactComputation
import InitE.SmallStages.Compact648.Complete
import InitE.SmallStages.Oracles648
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles648
namespace InitE.SmallStages.Compact648
theorem optimize648_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source648, oracle648) = optimized648 := by
  exact optimize648_eq.trans (by kernel_rfl)
#print axioms optimize648_exact
end InitE.SmallStages.Compact648
