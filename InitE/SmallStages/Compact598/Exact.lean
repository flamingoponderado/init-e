import InitE.CompactComputation
import InitE.SmallStages.Compact598.Complete
import InitE.SmallStages.Oracles598
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles598
namespace InitE.SmallStages.Compact598
theorem optimize598_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source598, oracle598) = optimized598 := by
  exact optimize598_eq.trans (by kernel_rfl)
#print axioms optimize598_exact
end InitE.SmallStages.Compact598
