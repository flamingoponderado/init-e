import InitE.CompactComputation
import InitE.SmallStages.Compact434.Complete
import InitE.SmallStages.Oracles434
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles434
namespace InitE.SmallStages.Compact434
theorem optimize434_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source434, oracle434) = optimized434 := by
  exact optimize434_eq.trans (by kernel_rfl)
#print axioms optimize434_exact
end InitE.SmallStages.Compact434
