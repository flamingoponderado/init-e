import InitE.SmallStages.Compact615.Complete
import InitE.SmallStages.Oracles615
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles615
namespace InitE.SmallStages.Compact615
theorem optimize615_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source615, oracle615) = optimized615 := by
  exact optimize615_eq.trans (by with_unfolding_all rfl)
#print axioms optimize615_exact
end InitE.SmallStages.Compact615
