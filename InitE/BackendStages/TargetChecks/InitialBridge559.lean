import InitE.BackendStages.Encoded559
import InitE.BackendStages.TargetChecks.Initial559
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial559_eq : InitE.BackendStages.Encoded559 = Initial559 := by
  with_unfolding_all rfl
#print axioms Initial559_eq
end InitE.BackendStages.TargetChecks
