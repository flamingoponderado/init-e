import InitE.BackendStages.Encoded850
import InitE.BackendStages.TargetChecks.Initial850
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial850_eq : InitE.BackendStages.Encoded850 = Initial850 := by
  with_unfolding_all rfl
#print axioms Initial850_eq
end InitE.BackendStages.TargetChecks
