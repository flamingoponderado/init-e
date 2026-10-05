import InitE.BackendStages.Encoded173
import InitE.BackendStages.TargetChecks.Initial173
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial173_eq : InitE.BackendStages.Encoded173 = Initial173 := by
  with_unfolding_all rfl
#print axioms Initial173_eq
end InitE.BackendStages.TargetChecks
