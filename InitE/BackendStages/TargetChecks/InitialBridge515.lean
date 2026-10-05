import InitE.BackendStages.Encoded515
import InitE.BackendStages.TargetChecks.Initial515
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial515_eq : InitE.BackendStages.Encoded515 = Initial515 := by
  with_unfolding_all rfl
#print axioms Initial515_eq
end InitE.BackendStages.TargetChecks
