import InitE.BackendStages.Encoded627
import InitE.BackendStages.TargetChecks.Initial627
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial627_eq : InitE.BackendStages.Encoded627 = Initial627 := by
  with_unfolding_all rfl
#print axioms Initial627_eq
end InitE.BackendStages.TargetChecks
