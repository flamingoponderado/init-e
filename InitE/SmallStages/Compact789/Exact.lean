import InitE.CompactComputation
import InitE.SmallStages.Compact789.Complete
import InitE.SmallStages.Oracles789
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles789
namespace InitE.SmallStages.Compact789
theorem optimize789_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source789, oracle789) = optimized789 := by
  exact optimize789_eq.trans (by kernel_rfl)
#print axioms optimize789_exact
end InitE.SmallStages.Compact789
