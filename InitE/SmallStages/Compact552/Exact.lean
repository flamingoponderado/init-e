import InitE.CompactComputation
import InitE.SmallStages.Compact552.Complete
import InitE.SmallStages.Oracles552
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles552
namespace InitE.SmallStages.Compact552
theorem optimize552_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source552, oracle552) = optimized552 := by
  exact optimize552_eq.trans (by kernel_rfl)
#print axioms optimize552_exact
end InitE.SmallStages.Compact552
