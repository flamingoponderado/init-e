import InitE.BackendStages.Encoded656
import InitE.BackendStages.TargetChecks.Initial656
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial656_eq : InitE.BackendStages.Encoded656 = Initial656 := by
  with_unfolding_all rfl
#print axioms Initial656_eq
end InitE.BackendStages.TargetChecks
