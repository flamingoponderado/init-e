import InitE.BackendStages.Encoded191
import InitE.BackendStages.TargetChecks.Initial191
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial191_eq : InitE.BackendStages.Encoded191 = Initial191 := by
  with_unfolding_all rfl
#print axioms Initial191_eq
end InitE.BackendStages.TargetChecks
