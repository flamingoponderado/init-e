import InitE.BackendStages.Encoded248
import InitE.BackendStages.TargetChecks.Initial248
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial248_eq : InitE.BackendStages.Encoded248 = Initial248 := by
  with_unfolding_all rfl
#print axioms Initial248_eq
end InitE.BackendStages.TargetChecks
