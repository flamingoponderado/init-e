import InitE.BackendStages.Encoded195
import InitE.BackendStages.TargetChecks.Initial195
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial195_eq : InitE.BackendStages.Encoded195 = Initial195 := by
  with_unfolding_all rfl
#print axioms Initial195_eq
end InitE.BackendStages.TargetChecks
