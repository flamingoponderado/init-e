import InitE.BackendStages.Encoded408
import InitE.BackendStages.TargetChecks.Initial408
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial408_eq : InitE.BackendStages.Encoded408 = Initial408 := by
  with_unfolding_all rfl
#print axioms Initial408_eq
end InitE.BackendStages.TargetChecks
