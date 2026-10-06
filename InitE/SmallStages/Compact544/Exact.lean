import InitE.CompactComputation
import InitE.SmallStages.Compact544.Complete
import InitE.SmallStages.Oracles544
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles544
namespace InitE.SmallStages.Compact544
theorem optimize544_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source544, oracle544) = optimized544 := by
  exact optimize544_eq.trans (by kernel_rfl)
#print axioms optimize544_exact
end InitE.SmallStages.Compact544
