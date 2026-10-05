import InitE.BackendStages.Encoded279
import InitE.BackendStages.TargetChecks.Initial279
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial279_eq : InitE.BackendStages.Encoded279 = Initial279 := by
  with_unfolding_all rfl
#print axioms Initial279_eq
end InitE.BackendStages.TargetChecks
