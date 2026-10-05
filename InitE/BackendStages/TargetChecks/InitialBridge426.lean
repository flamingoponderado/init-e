import InitE.BackendStages.Encoded426
import InitE.BackendStages.TargetChecks.Initial426
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial426_eq : InitE.BackendStages.Encoded426 = Initial426 := by
  with_unfolding_all rfl
#print axioms Initial426_eq
end InitE.BackendStages.TargetChecks
