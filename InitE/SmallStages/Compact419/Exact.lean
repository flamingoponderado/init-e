import InitE.SmallStages.Compact419.Complete
import InitE.SmallStages.Oracles419
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles419
namespace InitE.SmallStages.Compact419
theorem optimize419_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source419, oracle419) = optimized419 := by
  exact optimize419_eq.trans (by with_unfolding_all rfl)
#print axioms optimize419_exact
end InitE.SmallStages.Compact419
