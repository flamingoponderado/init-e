import InitE.BackendStages.Encoded251
import InitE.BackendStages.TargetChecks.Initial251
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial251_eq : InitE.BackendStages.Encoded251 = Initial251 := by
  with_unfolding_all rfl
#print axioms Initial251_eq
end InitE.BackendStages.TargetChecks
