import InitE.CompactComputation
import InitE.WordStages.Parallel830.Data0
import InitE.WordStages.Source830
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel830
theorem pass830_0_eq : WordSimp.compileExp (source830.2.2) = pass830_0 := by
  kernel_rfl
#print axioms pass830_0_eq
end InitE.WordStages.Parallel830
