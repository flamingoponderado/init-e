import InitE.BackendStages.Encoded95
import InitE.BackendStages.TargetChecks.Initial95
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial95_eq : InitE.BackendStages.Encoded95 = Initial95 := by
  with_unfolding_all rfl
#print axioms Initial95_eq
end InitE.BackendStages.TargetChecks
