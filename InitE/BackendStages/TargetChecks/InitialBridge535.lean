import InitE.BackendStages.Encoded535
import InitE.BackendStages.TargetChecks.Initial535
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial535_eq : InitE.BackendStages.Encoded535 = Initial535 := by
  with_unfolding_all rfl
#print axioms Initial535_eq
end InitE.BackendStages.TargetChecks
