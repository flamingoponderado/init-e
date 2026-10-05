import InitE.SmallStages.Compact732.Complete
import InitE.SmallStages.Oracles732
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles732
namespace InitE.SmallStages.Compact732
theorem optimize732_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source732, oracle732) = optimized732 := by
  exact optimize732_eq.trans (by with_unfolding_all rfl)
#print axioms optimize732_exact
end InitE.SmallStages.Compact732
