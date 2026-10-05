import InitE.BackendStages.Encoded821
import InitE.BackendStages.TargetChecks.Initial821
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial821_eq : InitE.BackendStages.Encoded821 = Initial821 := by
  with_unfolding_all rfl
#print axioms Initial821_eq
end InitE.BackendStages.TargetChecks
