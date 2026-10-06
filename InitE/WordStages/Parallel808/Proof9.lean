import InitE.CompactComputation
import InitE.WordStages.Parallel808.Data9
import InitE.WordStages.Parallel808.Data8
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel808
theorem pass808_9_eq : WordToWord.wordAllocWith RegAlloc.regAllocExecutable 808 riscvConfig RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (pass808_8) proposed808 = pass808_9 := by
  kernel_rfl
#print axioms pass808_9_eq
end InitE.WordStages.Parallel808
