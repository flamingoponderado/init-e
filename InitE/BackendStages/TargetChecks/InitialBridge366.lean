import InitE.BackendStages.Encoded366
import InitE.BackendStages.TargetChecks.Initial366
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial366_eq : InitE.BackendStages.Encoded366 = Initial366 := by
  with_unfolding_all rfl
#print axioms Initial366_eq
end InitE.BackendStages.TargetChecks
