import InitE.BackendStages.Encoded826
import InitE.BackendStages.TargetChecks.Initial826
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial826_eq : InitE.BackendStages.Encoded826 = Initial826 := by
  with_unfolding_all rfl
#print axioms Initial826_eq
end InitE.BackendStages.TargetChecks
