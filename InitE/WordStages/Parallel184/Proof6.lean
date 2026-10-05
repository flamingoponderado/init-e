import InitE.WordStages.Parallel184.Data6
import InitE.WordStages.Parallel184.Data5
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel184
theorem pass184_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith (pass184_5) = pass184_6 := by
  conv => lhs; cbv
  try rfl
#print axioms pass184_6_eq
end InitE.WordStages.Parallel184
