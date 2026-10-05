import InitE.BackendStages.Encoded328
import InitE.BackendStages.TargetChecks.Initial328
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial328_eq : InitE.BackendStages.Encoded328 = Initial328 := by
  with_unfolding_all rfl
#print axioms Initial328_eq
end InitE.BackendStages.TargetChecks
