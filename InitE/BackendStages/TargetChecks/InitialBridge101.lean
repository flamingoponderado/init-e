import InitE.BackendStages.Encoded101
import InitE.BackendStages.TargetChecks.Initial101
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial101_eq : InitE.BackendStages.Encoded101 = Initial101 := by
  with_unfolding_all rfl
#print axioms Initial101_eq
end InitE.BackendStages.TargetChecks
