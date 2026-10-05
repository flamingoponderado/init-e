import InitE.BackendStages.Encoded495
import InitE.BackendStages.TargetChecks.Initial495
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial495_eq : InitE.BackendStages.Encoded495 = Initial495 := by
  with_unfolding_all rfl
#print axioms Initial495_eq
end InitE.BackendStages.TargetChecks
