import InitE.BackendStages.Encoded265
import InitE.BackendStages.TargetChecks.Initial265
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial265_eq : InitE.BackendStages.Encoded265 = Initial265 := by
  with_unfolding_all rfl
#print axioms Initial265_eq
end InitE.BackendStages.TargetChecks
