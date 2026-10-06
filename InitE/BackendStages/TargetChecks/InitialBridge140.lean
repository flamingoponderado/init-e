import InitE.BackendStages.Encoded140
import InitE.BackendStages.TargetChecks.Initial140
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial140_eq : InitE.BackendStages.Encoded140 = Initial140 := by
  with_unfolding_all rfl
#print axioms Initial140_eq
end InitE.BackendStages.TargetChecks
