import InitE.BackendStages.Encoded196
import InitE.BackendStages.TargetChecks.Initial196
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial196_eq : InitE.BackendStages.Encoded196 = Initial196 := by
  with_unfolding_all rfl
#print axioms Initial196_eq
end InitE.BackendStages.TargetChecks
