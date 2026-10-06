import InitE.BackendStages.Encoded235
import InitE.BackendStages.TargetChecks.Initial235
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial235_eq : InitE.BackendStages.Encoded235 = Initial235 := by
  with_unfolding_all rfl
#print axioms Initial235_eq
end InitE.BackendStages.TargetChecks
