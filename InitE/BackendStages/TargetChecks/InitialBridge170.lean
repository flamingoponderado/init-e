import InitE.BackendStages.Encoded170
import InitE.BackendStages.TargetChecks.Initial170
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial170_eq : InitE.BackendStages.Encoded170 = Initial170 := by
  with_unfolding_all rfl
#print axioms Initial170_eq
end InitE.BackendStages.TargetChecks
