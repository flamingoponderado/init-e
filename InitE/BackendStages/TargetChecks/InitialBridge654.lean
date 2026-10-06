import InitE.BackendStages.Encoded654
import InitE.BackendStages.TargetChecks.Initial654
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial654_eq : InitE.BackendStages.Encoded654 = Initial654 := by
  with_unfolding_all rfl
#print axioms Initial654_eq
end InitE.BackendStages.TargetChecks
