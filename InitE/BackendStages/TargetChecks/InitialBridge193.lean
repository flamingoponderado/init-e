import InitE.BackendStages.Encoded193
import InitE.BackendStages.TargetChecks.Initial193
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial193_eq : InitE.BackendStages.Encoded193 = Initial193 := by
  with_unfolding_all rfl
#print axioms Initial193_eq
end InitE.BackendStages.TargetChecks
