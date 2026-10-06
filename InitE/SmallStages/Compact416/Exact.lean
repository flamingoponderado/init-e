import InitE.CompactComputation
import InitE.SmallStages.Compact416.Complete
import InitE.SmallStages.Oracles416
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles416
namespace InitE.SmallStages.Compact416
theorem optimize416_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source416, oracle416) = optimized416 := by
  exact optimize416_eq.trans (by kernel_rfl)
#print axioms optimize416_exact
end InitE.SmallStages.Compact416
