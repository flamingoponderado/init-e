import InitE.BackendStages.Encoded839
import InitE.BackendStages.TargetChecks.Initial839
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial839_eq : InitE.BackendStages.Encoded839 = Initial839 := by
  with_unfolding_all rfl
#print axioms Initial839_eq
end InitE.BackendStages.TargetChecks
