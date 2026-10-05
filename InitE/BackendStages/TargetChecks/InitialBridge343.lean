import InitE.BackendStages.Encoded343
import InitE.BackendStages.TargetChecks.Initial343
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial343_eq : InitE.BackendStages.Encoded343 = Initial343 := by
  with_unfolding_all rfl
#print axioms Initial343_eq
end InitE.BackendStages.TargetChecks
