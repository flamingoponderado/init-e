import InitE.BackendStages.Encoded168
import InitE.BackendStages.TargetChecks.Initial168
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial168_eq : InitE.BackendStages.Encoded168 = Initial168 := by
  with_unfolding_all rfl
#print axioms Initial168_eq
end InitE.BackendStages.TargetChecks
