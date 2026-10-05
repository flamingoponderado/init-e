import InitE.BackendStages.Encoded603
import InitE.BackendStages.TargetChecks.Initial603
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial603_eq : InitE.BackendStages.Encoded603 = Initial603 := by
  with_unfolding_all rfl
#print axioms Initial603_eq
end InitE.BackendStages.TargetChecks
