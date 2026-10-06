import InitE.BackendStages.Encoded232
import InitE.BackendStages.TargetChecks.Initial232
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial232_eq : InitE.BackendStages.Encoded232 = Initial232 := by
  with_unfolding_all rfl
#print axioms Initial232_eq
end InitE.BackendStages.TargetChecks
