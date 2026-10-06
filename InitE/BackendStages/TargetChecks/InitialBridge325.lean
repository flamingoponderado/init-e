import InitE.BackendStages.Encoded325
import InitE.BackendStages.TargetChecks.Initial325
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial325_eq : InitE.BackendStages.Encoded325 = Initial325 := by
  with_unfolding_all rfl
#print axioms Initial325_eq
end InitE.BackendStages.TargetChecks
