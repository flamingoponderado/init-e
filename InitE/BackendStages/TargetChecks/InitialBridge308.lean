import InitE.BackendStages.Encoded308
import InitE.BackendStages.TargetChecks.Initial308
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial308_eq : InitE.BackendStages.Encoded308 = Initial308 := by
  with_unfolding_all rfl
#print axioms Initial308_eq
end InitE.BackendStages.TargetChecks
