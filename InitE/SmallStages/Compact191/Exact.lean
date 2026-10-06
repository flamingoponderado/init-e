import InitE.CompactComputation
import InitE.SmallStages.Compact191.Complete
import InitE.SmallStages.Oracles191
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages
namespace InitE.SmallStages.Compact191
theorem optimize191_exact : WordToWord.fullCompileSingleWith
    RegAlloc.regAllocExecutable riscvConfig.twoRegArith
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
    RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
    riscvConfig (source191, InitE.SmallStages.Oracles191.oracle191) =
    InitE.SmallStages.Oracles191.optimized191 := by
  exact optimize191_eq.trans (by kernel_rfl)
#print axioms optimize191_exact
end InitE.SmallStages.Compact191
