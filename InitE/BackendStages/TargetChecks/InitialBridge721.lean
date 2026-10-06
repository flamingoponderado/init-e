import InitE.BackendStages.Encoded721
import InitE.BackendStages.TargetChecks.Initial721
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial721_eq : InitE.BackendStages.Encoded721 = Initial721 := by
  with_unfolding_all rfl
#print axioms Initial721_eq
end InitE.BackendStages.TargetChecks
