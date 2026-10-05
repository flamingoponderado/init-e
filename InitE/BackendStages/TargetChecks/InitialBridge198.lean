import InitE.BackendStages.Encoded198
import InitE.BackendStages.TargetChecks.Initial198
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial198_eq : InitE.BackendStages.Encoded198 = Initial198 := by
  with_unfolding_all rfl
#print axioms Initial198_eq
end InitE.BackendStages.TargetChecks
