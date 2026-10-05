import InitE.BackendStages.Encoded2
import InitE.BackendStages.TargetChecks.Initial2
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial2_eq : InitE.BackendStages.Encoded2 = Initial2 := by
  with_unfolding_all rfl
#print axioms Initial2_eq
end InitE.BackendStages.TargetChecks
