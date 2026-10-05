import InitE.BackendStages.Encoded585
import InitE.BackendStages.TargetChecks.Initial585
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial585_eq : InitE.BackendStages.Encoded585 = Initial585 := by
  with_unfolding_all rfl
#print axioms Initial585_eq
end InitE.BackendStages.TargetChecks
