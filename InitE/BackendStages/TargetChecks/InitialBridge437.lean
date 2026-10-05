import InitE.BackendStages.Encoded437
import InitE.BackendStages.TargetChecks.Initial437
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial437_eq : InitE.BackendStages.Encoded437 = Initial437 := by
  with_unfolding_all rfl
#print axioms Initial437_eq
end InitE.BackendStages.TargetChecks
