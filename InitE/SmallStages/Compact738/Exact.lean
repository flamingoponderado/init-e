import InitE.CompactComputation
import InitE.SmallStages.Compact738.Complete
import InitE.SmallStages.Oracles738
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles738
namespace InitE.SmallStages.Compact738
theorem optimize738_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source738, oracle738) = optimized738 := by
  exact optimize738_eq.trans (by kernel_rfl)
#print axioms optimize738_exact
end InitE.SmallStages.Compact738
