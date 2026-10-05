import InitE.BackendStages.Encoded98
import InitE.BackendStages.TargetChecks.Initial98
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial98_eq : InitE.BackendStages.Encoded98 = Initial98 := by
  with_unfolding_all rfl
#print axioms Initial98_eq
end InitE.BackendStages.TargetChecks
