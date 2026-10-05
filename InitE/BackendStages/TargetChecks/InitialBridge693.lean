import InitE.BackendStages.Encoded693
import InitE.BackendStages.TargetChecks.Initial693
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial693_eq : InitE.BackendStages.Encoded693 = Initial693 := by
  with_unfolding_all rfl
#print axioms Initial693_eq
end InitE.BackendStages.TargetChecks
