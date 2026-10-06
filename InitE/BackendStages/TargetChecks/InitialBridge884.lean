import InitE.BackendStages.Encoded884
import InitE.BackendStages.TargetChecks.Initial884
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial884_eq : InitE.BackendStages.Encoded884 = Initial884 := by
  with_unfolding_all rfl
#print axioms Initial884_eq
end InitE.BackendStages.TargetChecks
