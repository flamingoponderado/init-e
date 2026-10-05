import InitE.BackendStages.Encoded808
import InitE.BackendStages.TargetChecks.Initial808
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial808_eq : InitE.BackendStages.Encoded808 = Initial808 := by
  with_unfolding_all rfl
#print axioms Initial808_eq
end InitE.BackendStages.TargetChecks
