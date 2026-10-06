import InitE.CompactComputation
import InitE.SmallStages.Compact767.Complete
import InitE.SmallStages.Oracles767
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles767
namespace InitE.SmallStages.Compact767
theorem optimize767_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source767, oracle767) = optimized767 := by
  exact optimize767_eq.trans (by kernel_rfl)
#print axioms optimize767_exact
end InitE.SmallStages.Compact767
