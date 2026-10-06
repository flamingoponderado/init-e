import InitE.BackendStages.Encoded816
import InitE.BackendStages.TargetChecks.Initial816
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial816_eq : InitE.BackendStages.Encoded816 = Initial816 := by
  with_unfolding_all rfl
#print axioms Initial816_eq
end InitE.BackendStages.TargetChecks
