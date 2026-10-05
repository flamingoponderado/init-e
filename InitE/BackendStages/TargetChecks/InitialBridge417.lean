import InitE.BackendStages.Encoded417
import InitE.BackendStages.TargetChecks.Initial417
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial417_eq : InitE.BackendStages.Encoded417 = Initial417 := by
  with_unfolding_all rfl
#print axioms Initial417_eq
end InitE.BackendStages.TargetChecks
