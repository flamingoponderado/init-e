import InitE.BackendStages.Encoded161
import InitE.BackendStages.TargetChecks.Initial161
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial161_eq : InitE.BackendStages.Encoded161 = Initial161 := by
  with_unfolding_all rfl
#print axioms Initial161_eq
end InitE.BackendStages.TargetChecks
