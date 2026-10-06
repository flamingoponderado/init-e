import InitE.WordStages.Parallel651.Data6
import InitE.WordStages.Parallel651.Data5
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel651
theorem pass651_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith (pass651_5) = pass651_6 := by
  conv => lhs; cbv
  try rfl
#print axioms pass651_6_eq
end InitE.WordStages.Parallel651
