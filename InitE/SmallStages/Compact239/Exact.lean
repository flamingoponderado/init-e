import InitE.SmallStages.Compact239.Complete
import InitE.SmallStages.Oracles239
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles239
namespace InitE.SmallStages.Compact239
theorem optimize239_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source239, oracle239) = optimized239 := by
  exact optimize239_eq.trans (by with_unfolding_all rfl)
#print axioms optimize239_exact
end InitE.SmallStages.Compact239
