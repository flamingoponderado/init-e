import InitE.WordStages.Parallel240.Data9
import InitE.WordStages.Parallel240.Data8
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel240
theorem pass240_9_eq : WordToWord.wordAllocWith RegAlloc.regAllocExecutable 240 riscvConfig RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (pass240_8) proposed240 = pass240_9 := by
  conv => lhs; cbv
  try rfl
#print axioms pass240_9_eq
end InitE.WordStages.Parallel240
