import InitE.BackendStages.Encoded642
import InitE.BackendStages.TargetChecks.Initial642
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial642_eq : InitE.BackendStages.Encoded642 = Initial642 := by
  with_unfolding_all rfl
#print axioms Initial642_eq
end InitE.BackendStages.TargetChecks
