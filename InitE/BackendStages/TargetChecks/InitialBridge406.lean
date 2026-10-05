import InitE.BackendStages.Encoded406
import InitE.BackendStages.TargetChecks.Initial406
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial406_eq : InitE.BackendStages.Encoded406 = Initial406 := by
  with_unfolding_all rfl
#print axioms Initial406_eq
end InitE.BackendStages.TargetChecks
