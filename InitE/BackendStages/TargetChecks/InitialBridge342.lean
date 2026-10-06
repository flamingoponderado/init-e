import InitE.BackendStages.Encoded342
import InitE.BackendStages.TargetChecks.Initial342
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial342_eq : InitE.BackendStages.Encoded342 = Initial342 := by
  with_unfolding_all rfl
#print axioms Initial342_eq
end InitE.BackendStages.TargetChecks
