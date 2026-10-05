import InitE.BackendStages.Encoded880
import InitE.BackendStages.TargetChecks.Initial880
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial880_eq : InitE.BackendStages.Encoded880 = Initial880 := by
  with_unfolding_all rfl
#print axioms Initial880_eq
end InitE.BackendStages.TargetChecks
