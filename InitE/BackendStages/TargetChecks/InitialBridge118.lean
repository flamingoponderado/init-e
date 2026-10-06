import InitE.BackendStages.Encoded118
import InitE.BackendStages.TargetChecks.Initial118
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial118_eq : InitE.BackendStages.Encoded118 = Initial118 := by
  with_unfolding_all rfl
#print axioms Initial118_eq
end InitE.BackendStages.TargetChecks
