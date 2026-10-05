import InitE.SmallStages.Compact393.Complete
import InitE.SmallStages.Oracles393
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles393
namespace InitE.SmallStages.Compact393
theorem optimize393_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source393, oracle393) = optimized393 := by
  exact optimize393_eq.trans (by with_unfolding_all rfl)
#print axioms optimize393_exact
end InitE.SmallStages.Compact393
