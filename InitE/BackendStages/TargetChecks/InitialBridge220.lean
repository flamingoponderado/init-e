import InitE.BackendStages.Encoded220
import InitE.BackendStages.TargetChecks.Initial220
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial220_eq : InitE.BackendStages.Encoded220 = Initial220 := by
  with_unfolding_all rfl
#print axioms Initial220_eq
end InitE.BackendStages.TargetChecks
