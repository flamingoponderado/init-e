import InitE.BackendStages.Encoded530
import InitE.BackendStages.TargetChecks.Initial530
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial530_eq : InitE.BackendStages.Encoded530 = Initial530 := by
  with_unfolding_all rfl
#print axioms Initial530_eq
end InitE.BackendStages.TargetChecks
