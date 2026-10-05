import InitE.BackendStages.Encoded485
import InitE.BackendStages.TargetChecks.Initial485
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial485_eq : InitE.BackendStages.Encoded485 = Initial485 := by
  with_unfolding_all rfl
#print axioms Initial485_eq
end InitE.BackendStages.TargetChecks
