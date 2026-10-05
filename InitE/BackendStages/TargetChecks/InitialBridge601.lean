import InitE.BackendStages.Encoded601
import InitE.BackendStages.TargetChecks.Initial601
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial601_eq : InitE.BackendStages.Encoded601 = Initial601 := by
  with_unfolding_all rfl
#print axioms Initial601_eq
end InitE.BackendStages.TargetChecks
