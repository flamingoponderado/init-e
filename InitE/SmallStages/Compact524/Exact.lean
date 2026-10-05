import InitE.SmallStages.Compact524.Complete
import InitE.SmallStages.Oracles524
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles524
namespace InitE.SmallStages.Compact524
theorem optimize524_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source524, oracle524) = optimized524 := by
  exact optimize524_eq.trans (by with_unfolding_all rfl)
#print axioms optimize524_exact
end InitE.SmallStages.Compact524
