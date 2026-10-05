import InitE.BackendStages.Encoded322
import InitE.BackendStages.TargetChecks.Initial322
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial322_eq : InitE.BackendStages.Encoded322 = Initial322 := by
  with_unfolding_all rfl
#print axioms Initial322_eq
end InitE.BackendStages.TargetChecks
