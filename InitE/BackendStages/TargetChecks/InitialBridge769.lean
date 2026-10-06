import InitE.BackendStages.Encoded769
import InitE.BackendStages.TargetChecks.Initial769
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial769_eq : InitE.BackendStages.Encoded769 = Initial769 := by
  with_unfolding_all rfl
#print axioms Initial769_eq
end InitE.BackendStages.TargetChecks
