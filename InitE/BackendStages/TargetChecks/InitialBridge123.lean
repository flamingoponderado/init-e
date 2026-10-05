import InitE.BackendStages.Encoded123
import InitE.BackendStages.TargetChecks.Initial123
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial123_eq : InitE.BackendStages.Encoded123 = Initial123 := by
  with_unfolding_all rfl
#print axioms Initial123_eq
end InitE.BackendStages.TargetChecks
