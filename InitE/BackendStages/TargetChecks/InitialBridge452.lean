import InitE.BackendStages.Encoded452
import InitE.BackendStages.TargetChecks.Initial452
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial452_eq : InitE.BackendStages.Encoded452 = Initial452 := by
  with_unfolding_all rfl
#print axioms Initial452_eq
end InitE.BackendStages.TargetChecks
