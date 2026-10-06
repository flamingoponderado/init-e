import InitE.BackendStages.Encoded686
import InitE.BackendStages.TargetChecks.Initial686
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial686_eq : InitE.BackendStages.Encoded686 = Initial686 := by
  with_unfolding_all rfl
#print axioms Initial686_eq
end InitE.BackendStages.TargetChecks
