import InitE.CompactComputation
import InitE.SmallStages.Compact447.Complete
import InitE.SmallStages.Oracles447
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles447
namespace InitE.SmallStages.Compact447
theorem optimize447_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source447, oracle447) = optimized447 := by
  exact optimize447_eq.trans (by kernel_rfl)
#print axioms optimize447_exact
end InitE.SmallStages.Compact447
