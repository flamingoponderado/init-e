import InitE.BackendStages.Encoded636
import InitE.BackendStages.TargetChecks.Initial636
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial636_eq : InitE.BackendStages.Encoded636 = Initial636 := by
  with_unfolding_all rfl
#print axioms Initial636_eq
end InitE.BackendStages.TargetChecks
