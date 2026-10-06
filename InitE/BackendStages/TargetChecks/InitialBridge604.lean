import InitE.BackendStages.Encoded604
import InitE.BackendStages.TargetChecks.Initial604
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial604_eq : InitE.BackendStages.Encoded604 = Initial604 := by
  with_unfolding_all rfl
#print axioms Initial604_eq
end InitE.BackendStages.TargetChecks
