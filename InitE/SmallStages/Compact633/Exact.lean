import InitE.CompactComputation
import InitE.SmallStages.Compact633.Complete
import InitE.SmallStages.Oracles633
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles633
namespace InitE.SmallStages.Compact633
theorem optimize633_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source633, oracle633) = optimized633 := by
  exact optimize633_eq.trans (by kernel_rfl)
#print axioms optimize633_exact
end InitE.SmallStages.Compact633
