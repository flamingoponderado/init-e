import InitE.BackendStages.Encoded103
import InitE.BackendStages.TargetChecks.Initial103
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial103_eq : InitE.BackendStages.Encoded103 = Initial103 := by
  with_unfolding_all rfl
#print axioms Initial103_eq
end InitE.BackendStages.TargetChecks
