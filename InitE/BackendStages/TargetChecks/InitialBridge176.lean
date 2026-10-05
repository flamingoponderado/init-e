import InitE.BackendStages.Encoded176
import InitE.BackendStages.TargetChecks.Initial176
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial176_eq : InitE.BackendStages.Encoded176 = Initial176 := by
  with_unfolding_all rfl
#print axioms Initial176_eq
end InitE.BackendStages.TargetChecks
