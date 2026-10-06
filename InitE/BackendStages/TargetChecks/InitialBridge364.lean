import InitE.BackendStages.Encoded364
import InitE.BackendStages.TargetChecks.Initial364
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial364_eq : InitE.BackendStages.Encoded364 = Initial364 := by
  with_unfolding_all rfl
#print axioms Initial364_eq
end InitE.BackendStages.TargetChecks
