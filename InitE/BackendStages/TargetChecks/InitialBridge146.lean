import InitE.BackendStages.Encoded146
import InitE.BackendStages.TargetChecks.Initial146
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial146_eq : InitE.BackendStages.Encoded146 = Initial146 := by
  with_unfolding_all rfl
#print axioms Initial146_eq
end InitE.BackendStages.TargetChecks
