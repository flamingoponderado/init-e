import InitE.BackendStages.Encoded666
import InitE.BackendStages.TargetChecks.Initial666
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial666_eq : InitE.BackendStages.Encoded666 = Initial666 := by
  with_unfolding_all rfl
#print axioms Initial666_eq
end InitE.BackendStages.TargetChecks
