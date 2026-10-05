import InitE.BackendStages.Encoded718
import InitE.BackendStages.TargetChecks.Initial718
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial718_eq : InitE.BackendStages.Encoded718 = Initial718 := by
  with_unfolding_all rfl
#print axioms Initial718_eq
end InitE.BackendStages.TargetChecks
