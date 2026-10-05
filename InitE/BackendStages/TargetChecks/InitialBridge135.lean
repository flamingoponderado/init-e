import InitE.BackendStages.Encoded135
import InitE.BackendStages.TargetChecks.Initial135
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial135_eq : InitE.BackendStages.Encoded135 = Initial135 := by
  with_unfolding_all rfl
#print axioms Initial135_eq
end InitE.BackendStages.TargetChecks
