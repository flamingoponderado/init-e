import InitE.BackendStages.Encoded393
import InitE.BackendStages.TargetChecks.Initial393
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial393_eq : InitE.BackendStages.Encoded393 = Initial393 := by
  with_unfolding_all rfl
#print axioms Initial393_eq
end InitE.BackendStages.TargetChecks
