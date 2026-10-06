import InitE.CompactComputation
import InitE.SmallStages.Compact642.Complete
import InitE.SmallStages.Oracles642
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles642
namespace InitE.SmallStages.Compact642
theorem optimize642_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source642, oracle642) = optimized642 := by
  exact optimize642_eq.trans (by kernel_rfl)
#print axioms optimize642_exact
end InitE.SmallStages.Compact642
