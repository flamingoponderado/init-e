import InitE.BackendStages.Encoded683
import InitE.BackendStages.TargetChecks.Initial683
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial683_eq : InitE.BackendStages.Encoded683 = Initial683 := by
  with_unfolding_all rfl
#print axioms Initial683_eq
end InitE.BackendStages.TargetChecks
