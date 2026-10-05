import InitE.BackendStages.Encoded340
import InitE.BackendStages.TargetChecks.Initial340
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial340_eq : InitE.BackendStages.Encoded340 = Initial340 := by
  with_unfolding_all rfl
#print axioms Initial340_eq
end InitE.BackendStages.TargetChecks
