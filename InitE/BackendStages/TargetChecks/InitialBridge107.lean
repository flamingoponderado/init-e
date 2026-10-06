import InitE.BackendStages.Encoded107
import InitE.BackendStages.TargetChecks.Initial107
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial107_eq : InitE.BackendStages.Encoded107 = Initial107 := by
  with_unfolding_all rfl
#print axioms Initial107_eq
end InitE.BackendStages.TargetChecks
