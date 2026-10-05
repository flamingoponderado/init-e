import InitE.BackendStages.Encoded630
import InitE.BackendStages.TargetChecks.Initial630
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial630_eq : InitE.BackendStages.Encoded630 = Initial630 := by
  with_unfolding_all rfl
#print axioms Initial630_eq
end InitE.BackendStages.TargetChecks
