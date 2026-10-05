import InitE.BackendStages.Encoded512
import InitE.BackendStages.TargetChecks.Initial512
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial512_eq : InitE.BackendStages.Encoded512 = Initial512 := by
  with_unfolding_all rfl
#print axioms Initial512_eq
end InitE.BackendStages.TargetChecks
