import InitE.BackendStages.Encoded510
import InitE.BackendStages.TargetChecks.Initial510
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial510_eq : InitE.BackendStages.Encoded510 = Initial510 := by
  with_unfolding_all rfl
#print axioms Initial510_eq
end InitE.BackendStages.TargetChecks
