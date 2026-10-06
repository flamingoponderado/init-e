import InitE.CompactComputation
import InitE.WordStages.Parallel808.Data6
import InitE.WordStages.Parallel808.Data5
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel808
theorem pass808_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith (pass808_5) = pass808_6 := by
  kernel_rfl
#print axioms pass808_6_eq
end InitE.WordStages.Parallel808
