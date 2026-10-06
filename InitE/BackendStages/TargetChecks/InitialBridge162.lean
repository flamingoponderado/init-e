import InitE.BackendStages.Encoded162
import InitE.BackendStages.TargetChecks.Initial162
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial162_eq : InitE.BackendStages.Encoded162 = Initial162 := by
  with_unfolding_all rfl
#print axioms Initial162_eq
end InitE.BackendStages.TargetChecks
