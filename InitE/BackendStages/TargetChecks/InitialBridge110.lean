import InitE.BackendStages.Encoded110
import InitE.BackendStages.TargetChecks.Initial110
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial110_eq : InitE.BackendStages.Encoded110 = Initial110 := by
  with_unfolding_all rfl
#print axioms Initial110_eq
end InitE.BackendStages.TargetChecks
