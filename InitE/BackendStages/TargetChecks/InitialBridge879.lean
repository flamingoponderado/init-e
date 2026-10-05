import InitE.BackendStages.Encoded879
import InitE.BackendStages.TargetChecks.Initial879
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial879_eq : InitE.BackendStages.Encoded879 = Initial879 := by
  with_unfolding_all rfl
#print axioms Initial879_eq
end InitE.BackendStages.TargetChecks
