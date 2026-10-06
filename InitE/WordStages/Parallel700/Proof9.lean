import InitE.WordStages.Parallel700.Data9
import InitE.WordStages.Parallel700.Data8
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel700
theorem pass700_9_eq : WordToWord.wordAllocWith RegAlloc.regAllocExecutable 700 riscvConfig RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (pass700_8) proposed700 = pass700_9 := by
  conv => lhs; cbv
  try rfl
#print axioms pass700_9_eq
end InitE.WordStages.Parallel700
