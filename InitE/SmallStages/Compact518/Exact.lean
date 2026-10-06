import InitE.CompactComputation
import InitE.SmallStages.Compact518.Complete
import InitE.SmallStages.Oracles518
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles518
namespace InitE.SmallStages.Compact518
theorem optimize518_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source518, oracle518) = optimized518 := by
  exact optimize518_eq.trans (by kernel_rfl)
#print axioms optimize518_exact
end InitE.SmallStages.Compact518
