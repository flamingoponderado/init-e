import InitE.BackendStages.Encoded381
import InitE.BackendStages.TargetChecks.Initial381
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial381_eq : InitE.BackendStages.Encoded381 = Initial381 := by
  with_unfolding_all rfl
#print axioms Initial381_eq
end InitE.BackendStages.TargetChecks
