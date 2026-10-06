import InitE.SmallStages.Compact431.Complete
import InitE.SmallStages.Oracles431
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles431
namespace InitE.SmallStages.Compact431
theorem optimize431_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source431, oracle431) = optimized431 := by
  exact optimize431_eq.trans (by with_unfolding_all rfl)
#print axioms optimize431_exact
end InitE.SmallStages.Compact431
