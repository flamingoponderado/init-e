import InitE.WordStages.Parallel875.Data9
import InitE.WordStages.Parallel875.Data8
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel875
theorem pass875_9_eq : WordToWord.wordAllocWith RegAlloc.regAllocExecutable 875 riscvConfig RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (pass875_8) proposed875 = pass875_9 := by
  conv => lhs; cbv
  try rfl
#print axioms pass875_9_eq
end InitE.WordStages.Parallel875
