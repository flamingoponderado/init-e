import InitE.BackendStages.Encoded823
import InitE.BackendStages.TargetChecks.Initial823
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial823_eq : InitE.BackendStages.Encoded823 = Initial823 := by
  with_unfolding_all rfl
#print axioms Initial823_eq
end InitE.BackendStages.TargetChecks
