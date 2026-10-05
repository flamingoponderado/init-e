import InitE.BackendStages.Encoded703
import InitE.BackendStages.TargetChecks.Initial703
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial703_eq : InitE.BackendStages.Encoded703 = Initial703 := by
  with_unfolding_all rfl
#print axioms Initial703_eq
end InitE.BackendStages.TargetChecks
