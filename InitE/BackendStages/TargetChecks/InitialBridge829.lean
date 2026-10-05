import InitE.BackendStages.Encoded829
import InitE.BackendStages.TargetChecks.Initial829
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial829_eq : InitE.BackendStages.Encoded829 = Initial829 := by
  with_unfolding_all rfl
#print axioms Initial829_eq
end InitE.BackendStages.TargetChecks
