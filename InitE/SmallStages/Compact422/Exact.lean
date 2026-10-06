import InitE.CompactComputation
import InitE.SmallStages.Compact422.Complete
import InitE.SmallStages.Oracles422
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles422
namespace InitE.SmallStages.Compact422
theorem optimize422_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source422, oracle422) = optimized422 := by
  exact optimize422_eq.trans (by kernel_rfl)
#print axioms optimize422_exact
end InitE.SmallStages.Compact422
