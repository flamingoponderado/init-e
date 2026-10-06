import InitE.BackendStages.Encoded806
import InitE.BackendStages.TargetChecks.Initial806
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial806_eq : InitE.BackendStages.Encoded806 = Initial806 := by
  with_unfolding_all rfl
#print axioms Initial806_eq
end InitE.BackendStages.TargetChecks
