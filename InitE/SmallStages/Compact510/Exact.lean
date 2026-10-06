import InitE.CompactComputation
import InitE.SmallStages.Compact510.Complete
import InitE.SmallStages.Oracles510
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles510
namespace InitE.SmallStages.Compact510
theorem optimize510_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source510, oracle510) = optimized510 := by
  exact optimize510_eq.trans (by kernel_rfl)
#print axioms optimize510_exact
end InitE.SmallStages.Compact510
