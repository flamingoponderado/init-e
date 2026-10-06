import InitE.BackendStages.Encoded155
import InitE.BackendStages.TargetChecks.Initial155
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial155_eq : InitE.BackendStages.Encoded155 = Initial155 := by
  with_unfolding_all rfl
#print axioms Initial155_eq
end InitE.BackendStages.TargetChecks
