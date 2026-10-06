import InitE.CompactComputation
import InitE.SmallStages.Compact466.Complete
import InitE.SmallStages.Oracles466
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles466
namespace InitE.SmallStages.Compact466
theorem optimize466_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source466, oracle466) = optimized466 := by
  exact optimize466_eq.trans (by kernel_rfl)
#print axioms optimize466_exact
end InitE.SmallStages.Compact466
