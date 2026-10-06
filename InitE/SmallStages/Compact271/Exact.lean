import InitE.CompactComputation
import InitE.SmallStages.Compact271.Complete
import InitE.SmallStages.Oracles271
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles271
namespace InitE.SmallStages.Compact271
theorem optimize271_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source271, oracle271) = optimized271 := by
  exact optimize271_eq.trans (by kernel_rfl)
#print axioms optimize271_exact
end InitE.SmallStages.Compact271
