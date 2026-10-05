import InitE.BackendStages.Encoded190
import InitE.BackendStages.TargetChecks.Initial190
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial190_eq : InitE.BackendStages.Encoded190 = Initial190 := by
  with_unfolding_all rfl
#print axioms Initial190_eq
end InitE.BackendStages.TargetChecks
