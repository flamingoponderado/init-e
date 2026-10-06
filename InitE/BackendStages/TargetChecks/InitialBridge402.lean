import InitE.BackendStages.Encoded402
import InitE.BackendStages.TargetChecks.Initial402
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial402_eq : InitE.BackendStages.Encoded402 = Initial402 := by
  with_unfolding_all rfl
#print axioms Initial402_eq
end InitE.BackendStages.TargetChecks
