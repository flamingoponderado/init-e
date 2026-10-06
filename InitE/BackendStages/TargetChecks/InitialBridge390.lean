import InitE.BackendStages.Encoded390
import InitE.BackendStages.TargetChecks.Initial390
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial390_eq : InitE.BackendStages.Encoded390 = Initial390 := by
  with_unfolding_all rfl
#print axioms Initial390_eq
end InitE.BackendStages.TargetChecks
