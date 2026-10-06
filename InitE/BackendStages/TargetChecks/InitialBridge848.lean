import InitE.BackendStages.Encoded848
import InitE.BackendStages.TargetChecks.Initial848
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial848_eq : InitE.BackendStages.Encoded848 = Initial848 := by
  with_unfolding_all rfl
#print axioms Initial848_eq
end InitE.BackendStages.TargetChecks
