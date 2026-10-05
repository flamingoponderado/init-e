import InitE.BackendStages.Encoded416
import InitE.BackendStages.TargetChecks.Initial416
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial416_eq : InitE.BackendStages.Encoded416 = Initial416 := by
  with_unfolding_all rfl
#print axioms Initial416_eq
end InitE.BackendStages.TargetChecks
