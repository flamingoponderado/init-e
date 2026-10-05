import InitE.BackendStages.Encoded134
import InitE.BackendStages.TargetChecks.Initial134
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial134_eq : InitE.BackendStages.Encoded134 = Initial134 := by
  with_unfolding_all rfl
#print axioms Initial134_eq
end InitE.BackendStages.TargetChecks
