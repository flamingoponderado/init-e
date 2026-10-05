import InitE.SmallStages.Compact524.Data
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.SmallOptimizerComputation InitE.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages
namespace InitE.SmallStages.Compact524
theorem pass7_eq : WordUnreach.removeUnreach pass6 = pass7 := by
  with_unfolding_all rfl
#print axioms pass7_eq
end InitE.SmallStages.Compact524
