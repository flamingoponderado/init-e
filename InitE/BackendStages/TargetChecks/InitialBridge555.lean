import InitE.BackendStages.Encoded555
import InitE.BackendStages.TargetChecks.Initial555
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial555_eq : InitE.BackendStages.Encoded555 = Initial555 := by
  with_unfolding_all rfl
#print axioms Initial555_eq
end InitE.BackendStages.TargetChecks
