import InitE.BackendStages.Encoded139
import InitE.BackendStages.TargetChecks.Initial139
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial139_eq : InitE.BackendStages.Encoded139 = Initial139 := by
  with_unfolding_all rfl
#print axioms Initial139_eq
end InitE.BackendStages.TargetChecks
