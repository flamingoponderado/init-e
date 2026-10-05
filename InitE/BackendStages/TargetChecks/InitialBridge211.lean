import InitE.BackendStages.Encoded211
import InitE.BackendStages.TargetChecks.Initial211
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial211_eq : InitE.BackendStages.Encoded211 = Initial211 := by
  with_unfolding_all rfl
#print axioms Initial211_eq
end InitE.BackendStages.TargetChecks
