import InitE.BackendStages.Encoded505
import InitE.BackendStages.TargetChecks.Initial505
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial505_eq : InitE.BackendStages.Encoded505 = Initial505 := by
  with_unfolding_all rfl
#print axioms Initial505_eq
end InitE.BackendStages.TargetChecks
