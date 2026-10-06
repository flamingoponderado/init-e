import InitE.BackendStages.Encoded780
import InitE.BackendStages.TargetChecks.Initial780
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial780_eq : InitE.BackendStages.Encoded780 = Initial780 := by
  with_unfolding_all rfl
#print axioms Initial780_eq
end InitE.BackendStages.TargetChecks
