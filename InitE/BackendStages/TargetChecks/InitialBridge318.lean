import InitE.BackendStages.Encoded318
import InitE.BackendStages.TargetChecks.Initial318
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial318_eq : InitE.BackendStages.Encoded318 = Initial318 := by
  with_unfolding_all rfl
#print axioms Initial318_eq
end InitE.BackendStages.TargetChecks
