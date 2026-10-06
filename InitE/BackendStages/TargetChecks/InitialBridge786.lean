import InitE.BackendStages.Encoded786
import InitE.BackendStages.TargetChecks.Initial786
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial786_eq : InitE.BackendStages.Encoded786 = Initial786 := by
  with_unfolding_all rfl
#print axioms Initial786_eq
end InitE.BackendStages.TargetChecks
