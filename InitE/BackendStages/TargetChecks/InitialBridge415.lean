import InitE.BackendStages.Encoded415
import InitE.BackendStages.TargetChecks.Initial415
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial415_eq : InitE.BackendStages.Encoded415 = Initial415 := by
  with_unfolding_all rfl
#print axioms Initial415_eq
end InitE.BackendStages.TargetChecks
