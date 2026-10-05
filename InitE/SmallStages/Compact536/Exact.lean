import InitE.SmallStages.Compact536.Complete
import InitE.SmallStages.Oracles536
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles536
namespace InitE.SmallStages.Compact536
theorem optimize536_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source536, oracle536) = optimized536 := by
  exact optimize536_eq.trans (by with_unfolding_all rfl)
#print axioms optimize536_exact
end InitE.SmallStages.Compact536
