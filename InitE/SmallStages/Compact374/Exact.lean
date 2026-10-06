import InitE.CompactComputation
import InitE.SmallStages.Compact374.Complete
import InitE.SmallStages.Oracles374
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles374
namespace InitE.SmallStages.Compact374
theorem optimize374_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source374, oracle374) = optimized374 := by
  exact optimize374_eq.trans (by kernel_rfl)
#print axioms optimize374_exact
end InitE.SmallStages.Compact374
