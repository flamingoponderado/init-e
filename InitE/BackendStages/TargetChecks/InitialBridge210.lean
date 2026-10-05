import InitE.BackendStages.Encoded210
import InitE.BackendStages.TargetChecks.Initial210
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial210_eq : InitE.BackendStages.Encoded210 = Initial210 := by
  with_unfolding_all rfl
#print axioms Initial210_eq
end InitE.BackendStages.TargetChecks
