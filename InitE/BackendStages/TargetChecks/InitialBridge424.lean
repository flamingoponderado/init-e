import InitE.BackendStages.Encoded424
import InitE.BackendStages.TargetChecks.Initial424
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial424_eq : InitE.BackendStages.Encoded424 = Initial424 := by
  with_unfolding_all rfl
#print axioms Initial424_eq
end InitE.BackendStages.TargetChecks
