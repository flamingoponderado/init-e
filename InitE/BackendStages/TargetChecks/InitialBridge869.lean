import InitE.BackendStages.Encoded869
import InitE.BackendStages.TargetChecks.Initial869
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial869_eq : InitE.BackendStages.Encoded869 = Initial869 := by
  with_unfolding_all rfl
#print axioms Initial869_eq
end InitE.BackendStages.TargetChecks
