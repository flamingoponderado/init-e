import InitE.CompactComputation
import InitE.SmallStages.Compact703.Complete
import InitE.SmallStages.Oracles703
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles703
namespace InitE.SmallStages.Compact703
theorem optimize703_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source703, oracle703) = optimized703 := by
  exact optimize703_eq.trans (by kernel_rfl)
#print axioms optimize703_exact
end InitE.SmallStages.Compact703
