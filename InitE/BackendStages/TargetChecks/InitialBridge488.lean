import InitE.BackendStages.Encoded488
import InitE.BackendStages.TargetChecks.Initial488
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial488_eq : InitE.BackendStages.Encoded488 = Initial488 := by
  with_unfolding_all rfl
#print axioms Initial488_eq
end InitE.BackendStages.TargetChecks
