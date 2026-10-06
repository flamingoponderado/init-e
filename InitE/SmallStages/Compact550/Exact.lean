import InitE.CompactComputation
import InitE.SmallStages.Compact550.Complete
import InitE.SmallStages.Oracles550
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles550
namespace InitE.SmallStages.Compact550
theorem optimize550_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source550, oracle550) = optimized550 := by
  exact optimize550_eq.trans (by kernel_rfl)
#print axioms optimize550_exact
end InitE.SmallStages.Compact550
