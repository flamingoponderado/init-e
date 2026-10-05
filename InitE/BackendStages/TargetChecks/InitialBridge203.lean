import InitE.BackendStages.Encoded203
import InitE.BackendStages.TargetChecks.Initial203
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial203_eq : InitE.BackendStages.Encoded203 = Initial203 := by
  with_unfolding_all rfl
#print axioms Initial203_eq
end InitE.BackendStages.TargetChecks
