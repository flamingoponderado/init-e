import InitE.BackendStages.Encoded271
import InitE.BackendStages.TargetChecks.Initial271
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial271_eq : InitE.BackendStages.Encoded271 = Initial271 := by
  with_unfolding_all rfl
#print axioms Initial271_eq
end InitE.BackendStages.TargetChecks
