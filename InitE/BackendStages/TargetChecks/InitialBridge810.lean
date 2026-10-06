import InitE.BackendStages.Encoded810
import InitE.BackendStages.TargetChecks.Initial810
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial810_eq : InitE.BackendStages.Encoded810 = Initial810 := by
  with_unfolding_all rfl
#print axioms Initial810_eq
end InitE.BackendStages.TargetChecks
