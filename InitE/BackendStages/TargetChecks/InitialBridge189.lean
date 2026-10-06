import InitE.BackendStages.Encoded189
import InitE.BackendStages.TargetChecks.Initial189
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial189_eq : InitE.BackendStages.Encoded189 = Initial189 := by
  with_unfolding_all rfl
#print axioms Initial189_eq
end InitE.BackendStages.TargetChecks
