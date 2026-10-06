import InitE.CompactComputation
import InitE.SmallStages.Compact660.Complete
import InitE.SmallStages.Oracles660
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles660
namespace InitE.SmallStages.Compact660
theorem optimize660_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source660, oracle660) = optimized660 := by
  exact optimize660_eq.trans (by kernel_rfl)
#print axioms optimize660_exact
end InitE.SmallStages.Compact660
