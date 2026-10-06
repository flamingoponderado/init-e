import InitE.BackendStages.Encoded174
import InitE.BackendStages.TargetChecks.Initial174
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial174_eq : InitE.BackendStages.Encoded174 = Initial174 := by
  with_unfolding_all rfl
#print axioms Initial174_eq
end InitE.BackendStages.TargetChecks
