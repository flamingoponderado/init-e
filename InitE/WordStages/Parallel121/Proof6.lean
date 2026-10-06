import InitE.CompactComputation
import InitE.WordStages.Parallel121.Data6
import InitE.WordStages.Parallel121.Data5
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel121
theorem pass121_6_eq : WordInst.threeToTwoRegProg riscvConfig.twoRegArith (pass121_5) = pass121_6 := by
  kernel_rfl
#print axioms pass121_6_eq
end InitE.WordStages.Parallel121
