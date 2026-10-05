import InitE.BackendStages.Encoded755
import InitE.BackendStages.TargetChecks.Initial755
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial755_eq : InitE.BackendStages.Encoded755 = Initial755 := by
  with_unfolding_all rfl
#print axioms Initial755_eq
end InitE.BackendStages.TargetChecks
