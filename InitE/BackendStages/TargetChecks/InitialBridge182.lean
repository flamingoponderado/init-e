import InitE.BackendStages.Encoded182
import InitE.BackendStages.TargetChecks.Initial182
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial182_eq : InitE.BackendStages.Encoded182 = Initial182 := by
  with_unfolding_all rfl
#print axioms Initial182_eq
end InitE.BackendStages.TargetChecks
