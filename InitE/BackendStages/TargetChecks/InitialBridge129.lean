import InitE.BackendStages.Encoded129
import InitE.BackendStages.TargetChecks.Initial129
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial129_eq : InitE.BackendStages.Encoded129 = Initial129 := by
  with_unfolding_all rfl
#print axioms Initial129_eq
end InitE.BackendStages.TargetChecks
