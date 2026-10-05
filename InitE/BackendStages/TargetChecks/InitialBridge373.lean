import InitE.BackendStages.Encoded373
import InitE.BackendStages.TargetChecks.Initial373
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial373_eq : InitE.BackendStages.Encoded373 = Initial373 := by
  with_unfolding_all rfl
#print axioms Initial373_eq
end InitE.BackendStages.TargetChecks
