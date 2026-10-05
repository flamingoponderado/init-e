import InitE.BackendStages.Encoded735
import InitE.BackendStages.TargetChecks.Initial735
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial735_eq : InitE.BackendStages.Encoded735 = Initial735 := by
  with_unfolding_all rfl
#print axioms Initial735_eq
end InitE.BackendStages.TargetChecks
