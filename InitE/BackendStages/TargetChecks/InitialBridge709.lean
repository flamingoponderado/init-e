import InitE.BackendStages.Encoded709
import InitE.BackendStages.TargetChecks.Initial709
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial709_eq : InitE.BackendStages.Encoded709 = Initial709 := by
  with_unfolding_all rfl
#print axioms Initial709_eq
end InitE.BackendStages.TargetChecks
