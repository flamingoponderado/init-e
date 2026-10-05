import InitE.BackendStages.Encoded882
import InitE.BackendStages.TargetChecks.Initial882
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial882_eq : InitE.BackendStages.Encoded882 = Initial882 := by
  with_unfolding_all rfl
#print axioms Initial882_eq
end InitE.BackendStages.TargetChecks
