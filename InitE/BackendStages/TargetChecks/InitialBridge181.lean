import InitE.BackendStages.Encoded181
import InitE.BackendStages.TargetChecks.Initial181
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial181_eq : InitE.BackendStages.Encoded181 = Initial181 := by
  with_unfolding_all rfl
#print axioms Initial181_eq
end InitE.BackendStages.TargetChecks
