import InitE.BackendStages.Encoded6
import InitE.BackendStages.TargetChecks.Initial6
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial6_eq : InitE.BackendStages.Encoded6 = Initial6 := by
  with_unfolding_all rfl
#print axioms Initial6_eq
end InitE.BackendStages.TargetChecks
