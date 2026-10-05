import InitE.BackendStages.Encoded151
import InitE.BackendStages.TargetChecks.Initial151
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial151_eq : InitE.BackendStages.Encoded151 = Initial151 := by
  with_unfolding_all rfl
#print axioms Initial151_eq
end InitE.BackendStages.TargetChecks
