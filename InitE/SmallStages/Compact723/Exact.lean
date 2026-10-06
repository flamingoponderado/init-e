import InitE.CompactComputation
import InitE.SmallStages.Compact723.Complete
import InitE.SmallStages.Oracles723
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles723
namespace InitE.SmallStages.Compact723
theorem optimize723_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source723, oracle723) = optimized723 := by
  exact optimize723_eq.trans (by kernel_rfl)
#print axioms optimize723_exact
end InitE.SmallStages.Compact723
