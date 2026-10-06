import InitE.BackendStages.Encoded202
import InitE.BackendStages.TargetChecks.Initial202
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial202_eq : InitE.BackendStages.Encoded202 = Initial202 := by
  with_unfolding_all rfl
#print axioms Initial202_eq
end InitE.BackendStages.TargetChecks
