import InitE.BackendStages.Encoded83
import InitE.BackendStages.TargetChecks.Initial83
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial83_eq : InitE.BackendStages.Encoded83 = Initial83 := by
  with_unfolding_all rfl
#print axioms Initial83_eq
end InitE.BackendStages.TargetChecks
