import InitE.BackendStages.Encoded186
import InitE.BackendStages.TargetChecks.Initial186
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial186_eq : InitE.BackendStages.Encoded186 = Initial186 := by
  with_unfolding_all rfl
#print axioms Initial186_eq
end InitE.BackendStages.TargetChecks
