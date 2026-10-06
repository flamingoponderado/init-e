import InitE.BackendStages.Encoded78
import InitE.BackendStages.TargetChecks.Initial78
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial78_eq : InitE.BackendStages.Encoded78 = Initial78 := by
  with_unfolding_all rfl
#print axioms Initial78_eq
end InitE.BackendStages.TargetChecks
