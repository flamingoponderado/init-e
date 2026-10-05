import InitE.BackendStages.Encoded419
import InitE.BackendStages.TargetChecks.Initial419
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial419_eq : InitE.BackendStages.Encoded419 = Initial419 := by
  with_unfolding_all rfl
#print axioms Initial419_eq
end InitE.BackendStages.TargetChecks
