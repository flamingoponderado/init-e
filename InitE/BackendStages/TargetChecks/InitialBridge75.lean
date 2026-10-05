import InitE.BackendStages.Encoded75
import InitE.BackendStages.TargetChecks.Initial75
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial75_eq : InitE.BackendStages.Encoded75 = Initial75 := by
  with_unfolding_all rfl
#print axioms Initial75_eq
end InitE.BackendStages.TargetChecks
