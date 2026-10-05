import InitE.BackendStages.Encoded382
import InitE.BackendStages.TargetChecks.Initial382
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial382_eq : InitE.BackendStages.Encoded382 = Initial382 := by
  with_unfolding_all rfl
#print axioms Initial382_eq
end InitE.BackendStages.TargetChecks
