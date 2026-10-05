import InitE.BackendStages.Encoded125
import InitE.BackendStages.TargetChecks.Initial125
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial125_eq : InitE.BackendStages.Encoded125 = Initial125 := by
  with_unfolding_all rfl
#print axioms Initial125_eq
end InitE.BackendStages.TargetChecks
