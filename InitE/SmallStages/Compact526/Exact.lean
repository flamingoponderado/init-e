import InitE.CompactComputation
import InitE.SmallStages.Compact526.Complete
import InitE.SmallStages.Oracles526
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles526
namespace InitE.SmallStages.Compact526
theorem optimize526_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source526, oracle526) = optimized526 := by
  exact optimize526_eq.trans (by kernel_rfl)
#print axioms optimize526_exact
end InitE.SmallStages.Compact526
