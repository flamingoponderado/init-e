import InitE.CompactComputation
import InitE.WordStages.Parallel651.Data0
import InitE.WordStages.Source651
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel651
theorem pass651_0_eq : WordSimp.compileExp (source651.2.2) = pass651_0 := by
  kernel_rfl
#print axioms pass651_0_eq
end InitE.WordStages.Parallel651
