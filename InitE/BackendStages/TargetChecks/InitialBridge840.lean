import InitE.BackendStages.Encoded840
import InitE.BackendStages.TargetChecks.Initial840
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial840_eq : InitE.BackendStages.Encoded840 = Initial840 := by
  with_unfolding_all rfl
#print axioms Initial840_eq
end InitE.BackendStages.TargetChecks
