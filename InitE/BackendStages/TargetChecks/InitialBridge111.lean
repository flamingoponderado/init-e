import InitE.BackendStages.Encoded111
import InitE.BackendStages.TargetChecks.Initial111
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial111_eq : InitE.BackendStages.Encoded111 = Initial111 := by
  with_unfolding_all rfl
#print axioms Initial111_eq
end InitE.BackendStages.TargetChecks
