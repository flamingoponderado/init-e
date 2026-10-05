import InitE.BackendStages.Encoded813
import InitE.BackendStages.TargetChecks.Initial813
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial813_eq : InitE.BackendStages.Encoded813 = Initial813 := by
  with_unfolding_all rfl
#print axioms Initial813_eq
end InitE.BackendStages.TargetChecks
