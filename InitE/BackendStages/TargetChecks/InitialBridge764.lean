import InitE.BackendStages.Encoded764
import InitE.BackendStages.TargetChecks.Initial764
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial764_eq : InitE.BackendStages.Encoded764 = Initial764 := by
  with_unfolding_all rfl
#print axioms Initial764_eq
end InitE.BackendStages.TargetChecks
