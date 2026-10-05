import InitE.BackendStages.Encoded713
import InitE.BackendStages.TargetChecks.Initial713
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial713_eq : InitE.BackendStages.Encoded713 = Initial713 := by
  with_unfolding_all rfl
#print axioms Initial713_eq
end InitE.BackendStages.TargetChecks
