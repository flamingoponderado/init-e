import InitE.SmallStages.Compact729.Complete
import InitE.SmallStages.Oracles729
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles729
namespace InitE.SmallStages.Compact729
theorem optimize729_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source729, oracle729) = optimized729 := by
  exact optimize729_eq.trans (by with_unfolding_all rfl)
#print axioms optimize729_exact
end InitE.SmallStages.Compact729
