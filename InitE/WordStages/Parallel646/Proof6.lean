import InitE.CompactComputation
import InitE.WordStages.Parallel646.Data6
import InitE.WordStages.Parallel646.Data5
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel646
theorem pass646_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith (pass646_5) = pass646_6 := by
  kernel_rfl
#print axioms pass646_6_eq
end InitE.WordStages.Parallel646
