import InitE.BackendStages.Encoded667
import InitE.BackendStages.TargetChecks.Initial667
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial667_eq : InitE.BackendStages.Encoded667 = Initial667 := by
  with_unfolding_all rfl
#print axioms Initial667_eq
end InitE.BackendStages.TargetChecks
