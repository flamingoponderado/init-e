import InitE.BackendStages.Encoded358
import InitE.BackendStages.TargetChecks.Initial358
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial358_eq : InitE.BackendStages.Encoded358 = Initial358 := by
  with_unfolding_all rfl
#print axioms Initial358_eq
end InitE.BackendStages.TargetChecks
