import InitE.BackendStages.Encoded404
import InitE.BackendStages.TargetChecks.Initial404
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial404_eq : InitE.BackendStages.Encoded404 = Initial404 := by
  with_unfolding_all rfl
#print axioms Initial404_eq
end InitE.BackendStages.TargetChecks
