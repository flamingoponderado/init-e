import InitE.BackendStages.Encoded765
import InitE.BackendStages.TargetChecks.Initial765
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial765_eq : InitE.BackendStages.Encoded765 = Initial765 := by
  with_unfolding_all rfl
#print axioms Initial765_eq
end InitE.BackendStages.TargetChecks
