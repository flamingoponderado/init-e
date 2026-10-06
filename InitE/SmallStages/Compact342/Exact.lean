import InitE.CompactComputation
import InitE.SmallStages.Compact342.Complete
import InitE.SmallStages.Oracles342
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles342
namespace InitE.SmallStages.Compact342
theorem optimize342_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source342, oracle342) = optimized342 := by
  exact optimize342_eq.trans (by kernel_rfl)
#print axioms optimize342_exact
end InitE.SmallStages.Compact342
