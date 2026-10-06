import InitE.BackendStages.Encoded706
import InitE.BackendStages.TargetChecks.Initial706
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial706_eq : InitE.BackendStages.Encoded706 = Initial706 := by
  with_unfolding_all rfl
#print axioms Initial706_eq
end InitE.BackendStages.TargetChecks
