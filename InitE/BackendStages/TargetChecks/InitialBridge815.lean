import InitE.BackendStages.Encoded815
import InitE.BackendStages.TargetChecks.Initial815
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial815_eq : InitE.BackendStages.Encoded815 = Initial815 := by
  with_unfolding_all rfl
#print axioms Initial815_eq
end InitE.BackendStages.TargetChecks
