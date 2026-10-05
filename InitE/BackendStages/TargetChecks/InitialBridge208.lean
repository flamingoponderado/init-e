import InitE.BackendStages.Encoded208
import InitE.BackendStages.TargetChecks.Initial208
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial208_eq : InitE.BackendStages.Encoded208 = Initial208 := by
  with_unfolding_all rfl
#print axioms Initial208_eq
end InitE.BackendStages.TargetChecks
