import InitE.BackendStages.Encoded820
import InitE.BackendStages.TargetChecks.Initial820
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial820_eq : InitE.BackendStages.Encoded820 = Initial820 := by
  with_unfolding_all rfl
#print axioms Initial820_eq
end InitE.BackendStages.TargetChecks
