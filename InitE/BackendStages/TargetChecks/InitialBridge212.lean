import InitE.BackendStages.Encoded212
import InitE.BackendStages.TargetChecks.Initial212
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial212_eq : InitE.BackendStages.Encoded212 = Initial212 := by
  with_unfolding_all rfl
#print axioms Initial212_eq
end InitE.BackendStages.TargetChecks
