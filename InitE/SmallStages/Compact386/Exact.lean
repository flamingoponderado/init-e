import InitE.CompactComputation
import InitE.SmallStages.Compact386.Complete
import InitE.SmallStages.Oracles386
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles386
namespace InitE.SmallStages.Compact386
theorem optimize386_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source386, oracle386) = optimized386 := by
  exact optimize386_eq.trans (by kernel_rfl)
#print axioms optimize386_exact
end InitE.SmallStages.Compact386
