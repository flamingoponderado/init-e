import InitE.BackendStages.Encoded849
import InitE.BackendStages.TargetChecks.Initial849
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial849_eq : InitE.BackendStages.Encoded849 = Initial849 := by
  with_unfolding_all rfl
#print axioms Initial849_eq
end InitE.BackendStages.TargetChecks
