import InitE.BackendStages.Encoded873
import InitE.BackendStages.TargetChecks.Initial873
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial873_eq : InitE.BackendStages.Encoded873 = Initial873 := by
  with_unfolding_all rfl
#print axioms Initial873_eq
end InitE.BackendStages.TargetChecks
