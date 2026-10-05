import InitE.WordStages.Parallel651.Data1
import InitE.WordStages.Parallel651.Data0
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel651
theorem pass651_1_eq : WordInst.instSelectExecutable riscvConfig (maxVarHOL (pass651_0) + 1) (pass651_0) = pass651_1 := by
  conv => lhs; cbv
  try rfl
#print axioms pass651_1_eq
end InitE.WordStages.Parallel651
