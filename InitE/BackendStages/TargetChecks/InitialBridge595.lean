import InitE.BackendStages.Encoded595
import InitE.BackendStages.TargetChecks.Initial595
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial595_eq : InitE.BackendStages.Encoded595 = Initial595 := by
  with_unfolding_all rfl
#print axioms Initial595_eq
end InitE.BackendStages.TargetChecks
