import InitE.CompactComputation
import InitE.SmallStages.Compact840.Complete
import InitE.SmallStages.Oracles840
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles840
namespace InitE.SmallStages.Compact840
theorem optimize840_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source840, oracle840) = optimized840 := by
  exact optimize840_eq.trans (by kernel_rfl)
#print axioms optimize840_exact
end InitE.SmallStages.Compact840
