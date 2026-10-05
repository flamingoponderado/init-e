import InitE.BackendStages.Encoded726
import InitE.BackendStages.TargetChecks.Initial726
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial726_eq : InitE.BackendStages.Encoded726 = Initial726 := by
  with_unfolding_all rfl
#print axioms Initial726_eq
end InitE.BackendStages.TargetChecks
