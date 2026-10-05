import InitE.BackendStages.Encoded324
import InitE.BackendStages.TargetChecks.Initial324
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial324_eq : InitE.BackendStages.Encoded324 = Initial324 := by
  with_unfolding_all rfl
#print axioms Initial324_eq
end InitE.BackendStages.TargetChecks
