import InitE.BackendStages.Encoded881
import InitE.BackendStages.TargetChecks.Initial881
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial881_eq : InitE.BackendStages.Encoded881 = Initial881 := by
  with_unfolding_all rfl
#print axioms Initial881_eq
end InitE.BackendStages.TargetChecks
