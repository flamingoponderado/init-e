import InitE.BackendStages.Encoded326
import InitE.BackendStages.TargetChecks.Initial326
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial326_eq : InitE.BackendStages.Encoded326 = Initial326 := by
  with_unfolding_all rfl
#print axioms Initial326_eq
end InitE.BackendStages.TargetChecks
