import InitE.BackendStages.Encoded522
import InitE.BackendStages.TargetChecks.Initial522
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial522_eq : InitE.BackendStages.Encoded522 = Initial522 := by
  with_unfolding_all rfl
#print axioms Initial522_eq
end InitE.BackendStages.TargetChecks
