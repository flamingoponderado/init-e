import InitE.BackendStages.Encoded761
import InitE.BackendStages.TargetChecks.Initial761
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial761_eq : InitE.BackendStages.Encoded761 = Initial761 := by
  with_unfolding_all rfl
#print axioms Initial761_eq
end InitE.BackendStages.TargetChecks
