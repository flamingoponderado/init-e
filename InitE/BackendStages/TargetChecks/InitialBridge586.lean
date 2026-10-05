import InitE.BackendStages.Encoded586
import InitE.BackendStages.TargetChecks.Initial586
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial586_eq : InitE.BackendStages.Encoded586 = Initial586 := by
  with_unfolding_all rfl
#print axioms Initial586_eq
end InitE.BackendStages.TargetChecks
