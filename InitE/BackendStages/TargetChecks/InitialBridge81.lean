import InitE.BackendStages.Encoded81
import InitE.BackendStages.TargetChecks.Initial81
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial81_eq : InitE.BackendStages.Encoded81 = Initial81 := by
  with_unfolding_all rfl
#print axioms Initial81_eq
end InitE.BackendStages.TargetChecks
