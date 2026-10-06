import InitE.BackendStages.Encoded384
import InitE.BackendStages.TargetChecks.Initial384
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial384_eq : InitE.BackendStages.Encoded384 = Initial384 := by
  with_unfolding_all rfl
#print axioms Initial384_eq
end InitE.BackendStages.TargetChecks
