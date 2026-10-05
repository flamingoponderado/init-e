import InitE.BackendStages.Encoded444
import InitE.BackendStages.TargetChecks.Initial444
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial444_eq : InitE.BackendStages.Encoded444 = Initial444 := by
  with_unfolding_all rfl
#print axioms Initial444_eq
end InitE.BackendStages.TargetChecks
