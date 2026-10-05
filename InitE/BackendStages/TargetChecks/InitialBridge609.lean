import InitE.BackendStages.Encoded609
import InitE.BackendStages.TargetChecks.Initial609
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial609_eq : InitE.BackendStages.Encoded609 = Initial609 := by
  with_unfolding_all rfl
#print axioms Initial609_eq
end InitE.BackendStages.TargetChecks
