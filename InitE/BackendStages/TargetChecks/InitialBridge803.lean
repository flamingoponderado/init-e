import InitE.BackendStages.Encoded803
import InitE.BackendStages.TargetChecks.Initial803
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial803_eq : InitE.BackendStages.Encoded803 = Initial803 := by
  with_unfolding_all rfl
#print axioms Initial803_eq
end InitE.BackendStages.TargetChecks
