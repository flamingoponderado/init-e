import InitE.BackendStages.Encoded337
import InitE.BackendStages.TargetChecks.Initial337
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial337_eq : InitE.BackendStages.Encoded337 = Initial337 := by
  with_unfolding_all rfl
#print axioms Initial337_eq
end InitE.BackendStages.TargetChecks
