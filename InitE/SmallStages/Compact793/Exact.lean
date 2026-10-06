import InitE.CompactComputation
import InitE.SmallStages.Compact793.Complete
import InitE.SmallStages.Oracles793
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles793
namespace InitE.SmallStages.Compact793
theorem optimize793_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source793, oracle793) = optimized793 := by
  exact optimize793_eq.trans (by kernel_rfl)
#print axioms optimize793_exact
end InitE.SmallStages.Compact793
