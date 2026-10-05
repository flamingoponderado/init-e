import InitE.BackendStages.Encoded169
import InitE.BackendStages.TargetChecks.Initial169
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial169_eq : InitE.BackendStages.Encoded169 = Initial169 := by
  with_unfolding_all rfl
#print axioms Initial169_eq
end InitE.BackendStages.TargetChecks
