import InitE.BackendStages.Encoded520
import InitE.BackendStages.TargetChecks.Initial520
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial520_eq : InitE.BackendStages.Encoded520 = Initial520 := by
  with_unfolding_all rfl
#print axioms Initial520_eq
end InitE.BackendStages.TargetChecks
