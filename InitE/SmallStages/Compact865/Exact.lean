import InitE.CompactComputation
import InitE.SmallStages.Compact865.Complete
import InitE.SmallStages.Oracles865
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles865
namespace InitE.SmallStages.Compact865
theorem optimize865_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source865, oracle865) = optimized865 := by
  exact optimize865_eq.trans (by kernel_rfl)
#print axioms optimize865_exact
end InitE.SmallStages.Compact865
