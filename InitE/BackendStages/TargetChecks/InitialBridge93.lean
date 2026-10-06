import InitE.BackendStages.Encoded93
import InitE.BackendStages.TargetChecks.Initial93
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial93_eq : InitE.BackendStages.Encoded93 = Initial93 := by
  with_unfolding_all rfl
#print axioms Initial93_eq
end InitE.BackendStages.TargetChecks
