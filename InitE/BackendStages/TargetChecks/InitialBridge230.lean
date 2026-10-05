import InitE.BackendStages.Encoded230
import InitE.BackendStages.TargetChecks.Initial230
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial230_eq : InitE.BackendStages.Encoded230 = Initial230 := by
  with_unfolding_all rfl
#print axioms Initial230_eq
end InitE.BackendStages.TargetChecks
