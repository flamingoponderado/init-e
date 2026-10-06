import InitE.CompactComputation
import InitE.SmallStages.Compact889.Complete
import InitE.SmallStages.Oracles889
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles889
namespace InitE.SmallStages.Compact889
theorem optimize889_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source889, oracle889) = optimized889 := by
  exact optimize889_eq.trans (by kernel_rfl)
#print axioms optimize889_exact
end InitE.SmallStages.Compact889
