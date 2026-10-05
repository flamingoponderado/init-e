import InitE.BackendStages.Encoded722
import InitE.BackendStages.TargetChecks.Initial722
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial722_eq : InitE.BackendStages.Encoded722 = Initial722 := by
  with_unfolding_all rfl
#print axioms Initial722_eq
end InitE.BackendStages.TargetChecks
