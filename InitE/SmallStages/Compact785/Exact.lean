import InitE.CompactComputation
import InitE.SmallStages.Compact785.Complete
import InitE.SmallStages.Oracles785
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles785
namespace InitE.SmallStages.Compact785
theorem optimize785_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source785, oracle785) = optimized785 := by
  exact optimize785_eq.trans (by kernel_rfl)
#print axioms optimize785_exact
end InitE.SmallStages.Compact785
