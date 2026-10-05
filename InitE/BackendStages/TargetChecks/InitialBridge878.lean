import InitE.BackendStages.Encoded878
import InitE.BackendStages.TargetChecks.Initial878
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial878_eq : InitE.BackendStages.Encoded878 = Initial878 := by
  with_unfolding_all rfl
#print axioms Initial878_eq
end InitE.BackendStages.TargetChecks
