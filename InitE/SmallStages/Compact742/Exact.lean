import InitE.CompactComputation
import InitE.SmallStages.Compact742.Complete
import InitE.SmallStages.Oracles742
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles742
namespace InitE.SmallStages.Compact742
theorem optimize742_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source742, oracle742) = optimized742 := by
  exact optimize742_eq.trans (by kernel_rfl)
#print axioms optimize742_exact
end InitE.SmallStages.Compact742
