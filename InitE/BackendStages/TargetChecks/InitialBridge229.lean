import InitE.BackendStages.Encoded229
import InitE.BackendStages.TargetChecks.Initial229
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial229_eq : InitE.BackendStages.Encoded229 = Initial229 := by
  with_unfolding_all rfl
#print axioms Initial229_eq
end InitE.BackendStages.TargetChecks
