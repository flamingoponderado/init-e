import InitE.BackendStages.Encoded316
import InitE.BackendStages.TargetChecks.Initial316
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial316_eq : InitE.BackendStages.Encoded316 = Initial316 := by
  with_unfolding_all rfl
#print axioms Initial316_eq
end InitE.BackendStages.TargetChecks
