import InitE.BackendStages.Encoded606
import InitE.BackendStages.TargetChecks.Initial606
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial606_eq : InitE.BackendStages.Encoded606 = Initial606 := by
  with_unfolding_all rfl
#print axioms Initial606_eq
end InitE.BackendStages.TargetChecks
