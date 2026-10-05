import InitE.BackendStages.Encoded861
import InitE.BackendStages.TargetChecks.Initial861
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial861_eq : InitE.BackendStages.Encoded861 = Initial861 := by
  with_unfolding_all rfl
#print axioms Initial861_eq
end InitE.BackendStages.TargetChecks
