import InitE.SmallStages.Compact809.Complete
import InitE.SmallStages.Oracles809
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles809
namespace InitE.SmallStages.Compact809
theorem optimize809_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source809, oracle809) = optimized809 := by
  exact optimize809_eq.trans (by with_unfolding_all rfl)
#print axioms optimize809_exact
end InitE.SmallStages.Compact809
