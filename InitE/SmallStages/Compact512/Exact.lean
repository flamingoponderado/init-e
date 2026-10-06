import InitE.CompactComputation
import InitE.SmallStages.Compact512.Complete
import InitE.SmallStages.Oracles512
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles512
namespace InitE.SmallStages.Compact512
theorem optimize512_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source512, oracle512) = optimized512 := by
  exact optimize512_eq.trans (by kernel_rfl)
#print axioms optimize512_exact
end InitE.SmallStages.Compact512
