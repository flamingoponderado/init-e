import InitE.BackendStages.Encoded317
import InitE.BackendStages.TargetChecks.Initial317
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial317_eq : InitE.BackendStages.Encoded317 = Initial317 := by
  with_unfolding_all rfl
#print axioms Initial317_eq
end InitE.BackendStages.TargetChecks
