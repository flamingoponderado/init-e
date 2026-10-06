import InitE.BackendStages.Encoded647
import InitE.BackendStages.TargetChecks.Initial647
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial647_eq : InitE.BackendStages.Encoded647 = Initial647 := by
  with_unfolding_all rfl
#print axioms Initial647_eq
end InitE.BackendStages.TargetChecks
