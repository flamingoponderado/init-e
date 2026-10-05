import InitE.BackendStages.Encoded870
import InitE.BackendStages.TargetChecks.Initial870
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial870_eq : InitE.BackendStages.Encoded870 = Initial870 := by
  with_unfolding_all rfl
#print axioms Initial870_eq
end InitE.BackendStages.TargetChecks
