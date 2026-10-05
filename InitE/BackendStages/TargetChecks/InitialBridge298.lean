import InitE.BackendStages.Encoded298
import InitE.BackendStages.TargetChecks.Initial298
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial298_eq : InitE.BackendStages.Encoded298 = Initial298 := by
  with_unfolding_all rfl
#print axioms Initial298_eq
end InitE.BackendStages.TargetChecks
