import InitE.BackendStages.Encoded275
import InitE.BackendStages.TargetChecks.Initial275
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial275_eq : InitE.BackendStages.Encoded275 = Initial275 := by
  with_unfolding_all rfl
#print axioms Initial275_eq
end InitE.BackendStages.TargetChecks
