import InitE.CompactComputation
import InitE.WordStages.Parallel880.Data0
import InitE.WordStages.Source880
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel880
theorem pass880_0_eq : WordSimp.compileExp (source880.2.2) = pass880_0 := by
  kernel_rfl
#print axioms pass880_0_eq
end InitE.WordStages.Parallel880
