import InitE.BackendStages.Encoded679
import InitE.BackendStages.TargetChecks.Initial679
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial679_eq : InitE.BackendStages.Encoded679 = Initial679 := by
  with_unfolding_all rfl
#print axioms Initial679_eq
end InitE.BackendStages.TargetChecks
