import InitE.BackendStages.Encoded122
import InitE.BackendStages.TargetChecks.Initial122
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial122_eq : InitE.BackendStages.Encoded122 = Initial122 := by
  with_unfolding_all rfl
#print axioms Initial122_eq
end InitE.BackendStages.TargetChecks
