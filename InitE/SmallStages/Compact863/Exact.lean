import InitE.CompactComputation
import InitE.SmallStages.Compact863.Complete
import InitE.SmallStages.Oracles863
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles863
namespace InitE.SmallStages.Compact863
theorem optimize863_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source863, oracle863) = optimized863 := by
  exact optimize863_eq.trans (by kernel_rfl)
#print axioms optimize863_exact
end InitE.SmallStages.Compact863
