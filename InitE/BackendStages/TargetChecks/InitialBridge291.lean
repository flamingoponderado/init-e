import InitE.BackendStages.Encoded291
import InitE.BackendStages.TargetChecks.Initial291
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial291_eq : InitE.BackendStages.Encoded291 = Initial291 := by
  with_unfolding_all rfl
#print axioms Initial291_eq
end InitE.BackendStages.TargetChecks
