import InitE.BackendStages.Encoded242
import InitE.BackendStages.TargetChecks.Initial242
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial242_eq : InitE.BackendStages.Encoded242 = Initial242 := by
  with_unfolding_all rfl
#print axioms Initial242_eq
end InitE.BackendStages.TargetChecks
