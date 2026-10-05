import InitE.BackendStages.Encoded552
import InitE.BackendStages.TargetChecks.Initial552
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial552_eq : InitE.BackendStages.Encoded552 = Initial552 := by
  with_unfolding_all rfl
#print axioms Initial552_eq
end InitE.BackendStages.TargetChecks
