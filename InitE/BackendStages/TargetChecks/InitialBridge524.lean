import InitE.BackendStages.Encoded524
import InitE.BackendStages.TargetChecks.Initial524
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial524_eq : InitE.BackendStages.Encoded524 = Initial524 := by
  with_unfolding_all rfl
#print axioms Initial524_eq
end InitE.BackendStages.TargetChecks
