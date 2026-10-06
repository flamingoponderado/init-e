import InitE.BackendStages.Encoded360
import InitE.BackendStages.TargetChecks.Initial360
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial360_eq : InitE.BackendStages.Encoded360 = Initial360 := by
  with_unfolding_all rfl
#print axioms Initial360_eq
end InitE.BackendStages.TargetChecks
