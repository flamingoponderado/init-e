import InitE.WordStages.Parallel231.Data9
import InitE.WordStages.Parallel231.Data8
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel231
theorem pass231_9_eq : WordToWord.wordAllocWith RegAlloc.regAllocExecutable 231 riscvConfig RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (pass231_8) proposed231 = pass231_9 := by
  conv => lhs; cbv
  try rfl
#print axioms pass231_9_eq
end InitE.WordStages.Parallel231
