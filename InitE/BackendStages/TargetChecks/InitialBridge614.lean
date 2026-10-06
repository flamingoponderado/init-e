import InitE.BackendStages.Encoded614
import InitE.BackendStages.TargetChecks.Initial614
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial614_eq : InitE.BackendStages.Encoded614 = Initial614 := by
  with_unfolding_all rfl
#print axioms Initial614_eq
end InitE.BackendStages.TargetChecks
