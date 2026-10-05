import InitE.BackendStages.Encoded643
import InitE.BackendStages.TargetChecks.Initial643
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial643_eq : InitE.BackendStages.Encoded643 = Initial643 := by
  with_unfolding_all rfl
#print axioms Initial643_eq
end InitE.BackendStages.TargetChecks
