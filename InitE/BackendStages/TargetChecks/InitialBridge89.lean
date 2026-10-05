import InitE.BackendStages.Encoded89
import InitE.BackendStages.TargetChecks.Initial89
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial89_eq : InitE.BackendStages.Encoded89 = Initial89 := by
  with_unfolding_all rfl
#print axioms Initial89_eq
end InitE.BackendStages.TargetChecks
