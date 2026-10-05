import InitE.BackendStages.Encoded307
import InitE.BackendStages.TargetChecks.Initial307
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial307_eq : InitE.BackendStages.Encoded307 = Initial307 := by
  with_unfolding_all rfl
#print axioms Initial307_eq
end InitE.BackendStages.TargetChecks
