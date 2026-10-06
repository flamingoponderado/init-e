import InitE.BackendStages.Encoded264
import InitE.BackendStages.TargetChecks.Initial264
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial264_eq : InitE.BackendStages.Encoded264 = Initial264 := by
  with_unfolding_all rfl
#print axioms Initial264_eq
end InitE.BackendStages.TargetChecks
