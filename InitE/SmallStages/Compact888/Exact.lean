import InitE.SmallStages.Compact888.Complete
import InitE.SmallStages.Oracles888
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles888
namespace InitE.SmallStages.Compact888
theorem optimize888_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source888, oracle888) = optimized888 := by
  exact optimize888_eq.trans (by with_unfolding_all rfl)
#print axioms optimize888_exact
end InitE.SmallStages.Compact888
