import InitE.BackendStages.Encoded724
import InitE.BackendStages.TargetChecks.Initial724
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial724_eq : InitE.BackendStages.Encoded724 = Initial724 := by
  with_unfolding_all rfl
#print axioms Initial724_eq
end InitE.BackendStages.TargetChecks
