import InitE.BackendStages.Encoded130
import InitE.BackendStages.TargetChecks.Initial130
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial130_eq : InitE.BackendStages.Encoded130 = Initial130 := by
  with_unfolding_all rfl
#print axioms Initial130_eq
end InitE.BackendStages.TargetChecks
