import InitE.CompactComputation
import InitE.SmallStages.Compact369.Complete
import InitE.SmallStages.Oracles369
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles369
namespace InitE.SmallStages.Compact369
theorem optimize369_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source369, oracle369) = optimized369 := by
  exact optimize369_eq.trans (by kernel_rfl)
#print axioms optimize369_exact
end InitE.SmallStages.Compact369
