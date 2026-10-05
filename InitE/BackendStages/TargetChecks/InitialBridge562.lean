import InitE.BackendStages.Encoded562
import InitE.BackendStages.TargetChecks.Initial562
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial562_eq : InitE.BackendStages.Encoded562 = Initial562 := by
  with_unfolding_all rfl
#print axioms Initial562_eq
end InitE.BackendStages.TargetChecks
