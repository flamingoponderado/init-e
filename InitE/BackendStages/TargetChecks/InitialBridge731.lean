import InitE.BackendStages.Encoded731
import InitE.BackendStages.TargetChecks.Initial731
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial731_eq : InitE.BackendStages.Encoded731 = Initial731 := by
  with_unfolding_all rfl
#print axioms Initial731_eq
end InitE.BackendStages.TargetChecks
