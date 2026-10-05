import InitE.BackendStages.Encoded723
import InitE.BackendStages.TargetChecks.Initial723
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial723_eq : InitE.BackendStages.Encoded723 = Initial723 := by
  with_unfolding_all rfl
#print axioms Initial723_eq
end InitE.BackendStages.TargetChecks
