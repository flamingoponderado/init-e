import InitE.BackendStages.Encoded145
import InitE.BackendStages.TargetChecks.Initial145
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial145_eq : InitE.BackendStages.Encoded145 = Initial145 := by
  with_unfolding_all rfl
#print axioms Initial145_eq
end InitE.BackendStages.TargetChecks
