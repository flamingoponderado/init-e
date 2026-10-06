import InitE.CompactComputation
import InitE.SmallStages.Compact854.Complete
import InitE.SmallStages.Oracles854
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles854
namespace InitE.SmallStages.Compact854
theorem optimize854_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source854, oracle854) = optimized854 := by
  exact optimize854_eq.trans (by kernel_rfl)
#print axioms optimize854_exact
end InitE.SmallStages.Compact854
