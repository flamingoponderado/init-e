import InitE.BackendStages.Encoded171
import InitE.BackendStages.TargetChecks.Initial171
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial171_eq : InitE.BackendStages.Encoded171 = Initial171 := by
  with_unfolding_all rfl
#print axioms Initial171_eq
end InitE.BackendStages.TargetChecks
