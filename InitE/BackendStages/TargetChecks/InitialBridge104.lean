import InitE.BackendStages.Encoded104
import InitE.BackendStages.TargetChecks.Initial104
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial104_eq : InitE.BackendStages.Encoded104 = Initial104 := by
  with_unfolding_all rfl
#print axioms Initial104_eq
end InitE.BackendStages.TargetChecks
