import InitE.BackendStages.Encoded185
import InitE.BackendStages.TargetChecks.Initial185
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial185_eq : InitE.BackendStages.Encoded185 = Initial185 := by
  with_unfolding_all rfl
#print axioms Initial185_eq
end InitE.BackendStages.TargetChecks
