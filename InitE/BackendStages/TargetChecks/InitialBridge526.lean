import InitE.BackendStages.Encoded526
import InitE.BackendStages.TargetChecks.Initial526
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial526_eq : InitE.BackendStages.Encoded526 = Initial526 := by
  with_unfolding_all rfl
#print axioms Initial526_eq
end InitE.BackendStages.TargetChecks
