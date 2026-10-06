import InitE.BackendStages.Encoded626
import InitE.BackendStages.TargetChecks.Initial626
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial626_eq : InitE.BackendStages.Encoded626 = Initial626 := by
  with_unfolding_all rfl
#print axioms Initial626_eq
end InitE.BackendStages.TargetChecks
