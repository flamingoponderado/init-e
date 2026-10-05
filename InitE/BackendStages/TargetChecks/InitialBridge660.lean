import InitE.BackendStages.Encoded660
import InitE.BackendStages.TargetChecks.Initial660
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial660_eq : InitE.BackendStages.Encoded660 = Initial660 := by
  with_unfolding_all rfl
#print axioms Initial660_eq
end InitE.BackendStages.TargetChecks
