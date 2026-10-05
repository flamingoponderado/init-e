import InitE.BackendStages.Encoded166
import InitE.BackendStages.TargetChecks.Initial166
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial166_eq : InitE.BackendStages.Encoded166 = Initial166 := by
  with_unfolding_all rfl
#print axioms Initial166_eq
end InitE.BackendStages.TargetChecks
