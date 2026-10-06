import InitE.BackendStages.Encoded792
import InitE.BackendStages.TargetChecks.Initial792
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial792_eq : InitE.BackendStages.Encoded792 = Initial792 := by
  with_unfolding_all rfl
#print axioms Initial792_eq
end InitE.BackendStages.TargetChecks
