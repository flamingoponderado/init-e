import InitE.BackendStages.Encoded288
import InitE.BackendStages.TargetChecks.Initial288
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial288_eq : InitE.BackendStages.Encoded288 = Initial288 := by
  with_unfolding_all rfl
#print axioms Initial288_eq
end InitE.BackendStages.TargetChecks
