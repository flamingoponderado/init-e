import InitE.CompactComputation
import InitE.SmallStages.Compact685.Complete
import InitE.SmallStages.Oracles685
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles685
namespace InitE.SmallStages.Compact685
theorem optimize685_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source685, oracle685) = optimized685 := by
  exact optimize685_eq.trans (by kernel_rfl)
#print axioms optimize685_exact
end InitE.SmallStages.Compact685
