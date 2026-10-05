import InitE.BackendStages.Encoded153
import InitE.BackendStages.TargetChecks.Initial153
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial153_eq : InitE.BackendStages.Encoded153 = Initial153 := by
  with_unfolding_all rfl
#print axioms Initial153_eq
end InitE.BackendStages.TargetChecks
