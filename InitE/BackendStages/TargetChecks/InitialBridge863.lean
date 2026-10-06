import InitE.BackendStages.Encoded863
import InitE.BackendStages.TargetChecks.Initial863
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial863_eq : InitE.BackendStages.Encoded863 = Initial863 := by
  with_unfolding_all rfl
#print axioms Initial863_eq
end InitE.BackendStages.TargetChecks
