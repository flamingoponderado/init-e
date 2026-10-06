import InitE.BackendStages.Encoded409
import InitE.BackendStages.TargetChecks.Initial409
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial409_eq : InitE.BackendStages.Encoded409 = Initial409 := by
  with_unfolding_all rfl
#print axioms Initial409_eq
end InitE.BackendStages.TargetChecks
