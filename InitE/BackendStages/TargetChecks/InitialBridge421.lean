import InitE.BackendStages.Encoded421
import InitE.BackendStages.TargetChecks.Initial421
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial421_eq : InitE.BackendStages.Encoded421 = Initial421 := by
  with_unfolding_all rfl
#print axioms Initial421_eq
end InitE.BackendStages.TargetChecks
