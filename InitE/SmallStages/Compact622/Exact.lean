import InitE.CompactComputation
import InitE.SmallStages.Compact622.Complete
import InitE.SmallStages.Oracles622
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles622
namespace InitE.SmallStages.Compact622
theorem optimize622_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source622, oracle622) = optimized622 := by
  exact optimize622_eq.trans (by kernel_rfl)
#print axioms optimize622_exact
end InitE.SmallStages.Compact622
