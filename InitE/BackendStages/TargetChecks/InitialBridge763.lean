import InitE.BackendStages.Encoded763
import InitE.BackendStages.TargetChecks.Initial763
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial763_eq : InitE.BackendStages.Encoded763 = Initial763 := by
  with_unfolding_all rfl
#print axioms Initial763_eq
end InitE.BackendStages.TargetChecks
