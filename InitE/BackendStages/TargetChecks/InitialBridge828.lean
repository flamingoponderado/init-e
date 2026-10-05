import InitE.BackendStages.Encoded828
import InitE.BackendStages.TargetChecks.Initial828
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial828_eq : InitE.BackendStages.Encoded828 = Initial828 := by
  with_unfolding_all rfl
#print axioms Initial828_eq
end InitE.BackendStages.TargetChecks
