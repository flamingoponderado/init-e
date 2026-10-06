import InitE.BackendStages.Encoded663
import InitE.BackendStages.TargetChecks.Initial663
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial663_eq : InitE.BackendStages.Encoded663 = Initial663 := by
  with_unfolding_all rfl
#print axioms Initial663_eq
end InitE.BackendStages.TargetChecks
