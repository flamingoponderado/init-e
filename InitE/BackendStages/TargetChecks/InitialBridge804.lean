import InitE.BackendStages.Encoded804
import InitE.BackendStages.TargetChecks.Initial804
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial804_eq : InitE.BackendStages.Encoded804 = Initial804 := by
  with_unfolding_all rfl
#print axioms Initial804_eq
end InitE.BackendStages.TargetChecks
