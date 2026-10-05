import InitE.BackendStages.Encoded860
import InitE.BackendStages.TargetChecks.Initial860
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial860_eq : InitE.BackendStages.Encoded860 = Initial860 := by
  with_unfolding_all rfl
#print axioms Initial860_eq
end InitE.BackendStages.TargetChecks
