import InitE.BackendStages.Encoded207
import InitE.BackendStages.TargetChecks.Initial207
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial207_eq : InitE.BackendStages.Encoded207 = Initial207 := by
  with_unfolding_all rfl
#print axioms Initial207_eq
end InitE.BackendStages.TargetChecks
