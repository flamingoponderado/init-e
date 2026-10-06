import InitE.CompactComputation
import InitE.SmallStages.Compact827.Complete
import InitE.SmallStages.Oracles827
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles827
namespace InitE.SmallStages.Compact827
theorem optimize827_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source827, oracle827) = optimized827 := by
  exact optimize827_eq.trans (by kernel_rfl)
#print axioms optimize827_exact
end InitE.SmallStages.Compact827
