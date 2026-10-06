import InitE.BackendStages.Encoded787
import InitE.BackendStages.TargetChecks.Initial787
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial787_eq : InitE.BackendStages.Encoded787 = Initial787 := by
  with_unfolding_all rfl
#print axioms Initial787_eq
end InitE.BackendStages.TargetChecks
