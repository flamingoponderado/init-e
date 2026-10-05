import InitE.BackendStages.Encoded641
import InitE.BackendStages.TargetChecks.Initial641
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial641_eq : InitE.BackendStages.Encoded641 = Initial641 := by
  with_unfolding_all rfl
#print axioms Initial641_eq
end InitE.BackendStages.TargetChecks
