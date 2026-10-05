import InitE.BackendStages.Encoded289
import InitE.BackendStages.TargetChecks.Initial289
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial289_eq : InitE.BackendStages.Encoded289 = Initial289 := by
  with_unfolding_all rfl
#print axioms Initial289_eq
end InitE.BackendStages.TargetChecks
