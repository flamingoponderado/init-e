import InitE.BackendStages.Encoded864
import InitE.BackendStages.TargetChecks.Initial864
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial864_eq : InitE.BackendStages.Encoded864 = Initial864 := by
  with_unfolding_all rfl
#print axioms Initial864_eq
end InitE.BackendStages.TargetChecks
