import InitE.CompactComputation
import InitE.SmallStages.Compact857.Complete
import InitE.SmallStages.Oracles857
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles857
namespace InitE.SmallStages.Compact857
theorem optimize857_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source857, oracle857) = optimized857 := by
  exact optimize857_eq.trans (by kernel_rfl)
#print axioms optimize857_exact
end InitE.SmallStages.Compact857
