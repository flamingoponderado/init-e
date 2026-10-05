import InitE.BackendStages.Encoded590
import InitE.BackendStages.TargetChecks.Initial590
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial590_eq : InitE.BackendStages.Encoded590 = Initial590 := by
  with_unfolding_all rfl
#print axioms Initial590_eq
end InitE.BackendStages.TargetChecks
