import InitE.BackendStages.Encoded127
import InitE.BackendStages.TargetChecks.Initial127
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial127_eq : InitE.BackendStages.Encoded127 = Initial127 := by
  with_unfolding_all rfl
#print axioms Initial127_eq
end InitE.BackendStages.TargetChecks
