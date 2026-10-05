import InitE.BackendStages.Encoded121
import InitE.BackendStages.TargetChecks.Initial121
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial121_eq : InitE.BackendStages.Encoded121 = Initial121 := by
  with_unfolding_all rfl
#print axioms Initial121_eq
end InitE.BackendStages.TargetChecks
