import InitE.BackendStages.Encoded592
import InitE.BackendStages.TargetChecks.Initial592
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial592_eq : InitE.BackendStages.Encoded592 = Initial592 := by
  with_unfolding_all rfl
#print axioms Initial592_eq
end InitE.BackendStages.TargetChecks
