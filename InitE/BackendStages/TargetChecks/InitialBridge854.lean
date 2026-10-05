import InitE.BackendStages.Encoded854
import InitE.BackendStages.TargetChecks.Initial854
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial854_eq : InitE.BackendStages.Encoded854 = Initial854 := by
  with_unfolding_all rfl
#print axioms Initial854_eq
end InitE.BackendStages.TargetChecks
