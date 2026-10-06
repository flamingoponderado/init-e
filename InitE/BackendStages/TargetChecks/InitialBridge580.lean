import InitE.BackendStages.Encoded580
import InitE.BackendStages.TargetChecks.Initial580
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial580_eq : InitE.BackendStages.Encoded580 = Initial580 := by
  with_unfolding_all rfl
#print axioms Initial580_eq
end InitE.BackendStages.TargetChecks
