import InitE.BackendStages.Encoded87
import InitE.BackendStages.TargetChecks.Initial87
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial87_eq : InitE.BackendStages.Encoded87 = Initial87 := by
  with_unfolding_all rfl
#print axioms Initial87_eq
end InitE.BackendStages.TargetChecks
