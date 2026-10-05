import InitE.BackendStages.Encoded270
import InitE.BackendStages.TargetChecks.Initial270
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial270_eq : InitE.BackendStages.Encoded270 = Initial270 := by
  with_unfolding_all rfl
#print axioms Initial270_eq
end InitE.BackendStages.TargetChecks
