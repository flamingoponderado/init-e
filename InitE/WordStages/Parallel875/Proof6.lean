import InitE.WordStages.Parallel875.Data6
import InitE.WordStages.Parallel875.Data5
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel875
theorem pass875_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith (pass875_5) = pass875_6 := by
  conv => lhs; cbv
  try rfl
#print axioms pass875_6_eq
end InitE.WordStages.Parallel875
