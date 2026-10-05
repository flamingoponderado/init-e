import InitE.BackendStages.Encoded187
import InitE.BackendStages.TargetChecks.Initial187
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial187_eq : InitE.BackendStages.Encoded187 = Initial187 := by
  with_unfolding_all rfl
#print axioms Initial187_eq
end InitE.BackendStages.TargetChecks
