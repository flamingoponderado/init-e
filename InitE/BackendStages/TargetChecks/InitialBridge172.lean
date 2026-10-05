import InitE.BackendStages.Encoded172
import InitE.BackendStages.TargetChecks.Initial172
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial172_eq : InitE.BackendStages.Encoded172 = Initial172 := by
  with_unfolding_all rfl
#print axioms Initial172_eq
end InitE.BackendStages.TargetChecks
