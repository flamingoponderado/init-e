import InitE.BackendStages.Encoded832
import InitE.BackendStages.TargetChecks.Initial832
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial832_eq : InitE.BackendStages.Encoded832 = Initial832 := by
  with_unfolding_all rfl
#print axioms Initial832_eq
end InitE.BackendStages.TargetChecks
