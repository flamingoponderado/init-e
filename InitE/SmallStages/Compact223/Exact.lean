import InitE.CompactComputation
import InitE.SmallStages.Compact223.Complete
import InitE.SmallStages.Oracles223
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles223
namespace InitE.SmallStages.Compact223
theorem optimize223_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source223, oracle223) = optimized223 := by
  exact optimize223_eq.trans (by kernel_rfl)
#print axioms optimize223_exact
end InitE.SmallStages.Compact223
