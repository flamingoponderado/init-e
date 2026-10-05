import InitE.BackendStages.Encoded862
import InitE.BackendStages.TargetChecks.Initial862
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial862_eq : InitE.BackendStages.Encoded862 = Initial862 := by
  with_unfolding_all rfl
#print axioms Initial862_eq
end InitE.BackendStages.TargetChecks
