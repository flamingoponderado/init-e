import InitE.BackendStages.Encoded80
import InitE.BackendStages.TargetChecks.Initial80
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial80_eq : InitE.BackendStages.Encoded80 = Initial80 := by
  with_unfolding_all rfl
#print axioms Initial80_eq
end InitE.BackendStages.TargetChecks
