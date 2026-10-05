import InitE.BackendStages.Encoded513
import InitE.BackendStages.TargetChecks.Initial513
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial513_eq : InitE.BackendStages.Encoded513 = Initial513 := by
  with_unfolding_all rfl
#print axioms Initial513_eq
end InitE.BackendStages.TargetChecks
