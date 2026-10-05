import InitE.BackendStages.Encoded754
import InitE.BackendStages.TargetChecks.Initial754
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial754_eq : InitE.BackendStages.Encoded754 = Initial754 := by
  with_unfolding_all rfl
#print axioms Initial754_eq
end InitE.BackendStages.TargetChecks
