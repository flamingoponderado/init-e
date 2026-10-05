import InitE.BackendStages.Encoded69
import InitE.BackendStages.TargetChecks.Initial69
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial69_eq : InitE.BackendStages.Encoded69 = Initial69 := by
  with_unfolding_all rfl
#print axioms Initial69_eq
end InitE.BackendStages.TargetChecks
