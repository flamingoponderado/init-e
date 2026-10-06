import InitE.CompactComputation
import InitE.SmallStages.Compact847.Complete
import InitE.SmallStages.Oracles847
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles847
namespace InitE.SmallStages.Compact847
theorem optimize847_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source847, oracle847) = optimized847 := by
  exact optimize847_eq.trans (by kernel_rfl)
#print axioms optimize847_exact
end InitE.SmallStages.Compact847
