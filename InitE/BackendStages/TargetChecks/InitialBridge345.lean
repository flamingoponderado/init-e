import InitE.BackendStages.Encoded345
import InitE.BackendStages.TargetChecks.Initial345
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial345_eq : InitE.BackendStages.Encoded345 = Initial345 := by
  with_unfolding_all rfl
#print axioms Initial345_eq
end InitE.BackendStages.TargetChecks
