import InitE.BackendStages.Encoded65
import InitE.BackendStages.TargetChecks.Initial65
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial65_eq : InitE.BackendStages.Encoded65 = Initial65 := by
  with_unfolding_all rfl
#print axioms Initial65_eq
end InitE.BackendStages.TargetChecks
