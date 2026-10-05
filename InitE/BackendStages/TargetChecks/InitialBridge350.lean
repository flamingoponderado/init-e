import InitE.BackendStages.Encoded350
import InitE.BackendStages.TargetChecks.Initial350
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial350_eq : InitE.BackendStages.Encoded350 = Initial350 := by
  with_unfolding_all rfl
#print axioms Initial350_eq
end InitE.BackendStages.TargetChecks
