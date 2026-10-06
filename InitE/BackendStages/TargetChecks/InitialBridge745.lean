import InitE.BackendStages.Encoded745
import InitE.BackendStages.TargetChecks.Initial745
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial745_eq : InitE.BackendStages.Encoded745 = Initial745 := by
  with_unfolding_all rfl
#print axioms Initial745_eq
end InitE.BackendStages.TargetChecks
