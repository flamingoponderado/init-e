import InitE.BackendStages.Encoded179
import InitE.BackendStages.TargetChecks.Initial179
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial179_eq : InitE.BackendStages.Encoded179 = Initial179 := by
  with_unfolding_all rfl
#print axioms Initial179_eq
end InitE.BackendStages.TargetChecks
