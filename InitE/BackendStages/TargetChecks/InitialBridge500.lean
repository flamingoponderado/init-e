import InitE.BackendStages.Encoded500
import InitE.BackendStages.TargetChecks.Initial500
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial500_eq : InitE.BackendStages.Encoded500 = Initial500 := by
  with_unfolding_all rfl
#print axioms Initial500_eq
end InitE.BackendStages.TargetChecks
