import InitE.BackendStages.Encoded359
import InitE.BackendStages.TargetChecks.Initial359
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial359_eq : InitE.BackendStages.Encoded359 = Initial359 := by
  with_unfolding_all rfl
#print axioms Initial359_eq
end InitE.BackendStages.TargetChecks
