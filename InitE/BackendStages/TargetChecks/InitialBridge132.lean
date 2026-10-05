import InitE.BackendStages.Encoded132
import InitE.BackendStages.TargetChecks.Initial132
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial132_eq : InitE.BackendStages.Encoded132 = Initial132 := by
  with_unfolding_all rfl
#print axioms Initial132_eq
end InitE.BackendStages.TargetChecks
