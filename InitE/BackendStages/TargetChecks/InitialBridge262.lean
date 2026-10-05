import InitE.BackendStages.Encoded262
import InitE.BackendStages.TargetChecks.Initial262
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial262_eq : InitE.BackendStages.Encoded262 = Initial262 := by
  with_unfolding_all rfl
#print axioms Initial262_eq
end InitE.BackendStages.TargetChecks
