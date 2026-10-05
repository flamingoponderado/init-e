import InitE.BackendStages.Encoded865
import InitE.BackendStages.TargetChecks.Initial865
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial865_eq : InitE.BackendStages.Encoded865 = Initial865 := by
  with_unfolding_all rfl
#print axioms Initial865_eq
end InitE.BackendStages.TargetChecks
