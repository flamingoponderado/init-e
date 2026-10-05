import InitE.BackendStages.Encoded809
import InitE.BackendStages.TargetChecks.Initial809
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial809_eq : InitE.BackendStages.Encoded809 = Initial809 := by
  with_unfolding_all rfl
#print axioms Initial809_eq
end InitE.BackendStages.TargetChecks
