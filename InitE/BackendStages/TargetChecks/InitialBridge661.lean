import InitE.BackendStages.Encoded661
import InitE.BackendStages.TargetChecks.Initial661
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial661_eq : InitE.BackendStages.Encoded661 = Initial661 := by
  with_unfolding_all rfl
#print axioms Initial661_eq
end InitE.BackendStages.TargetChecks
