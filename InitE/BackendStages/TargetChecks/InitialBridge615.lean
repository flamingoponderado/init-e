import InitE.BackendStages.Encoded615
import InitE.BackendStages.TargetChecks.Initial615
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial615_eq : InitE.BackendStages.Encoded615 = Initial615 := by
  with_unfolding_all rfl
#print axioms Initial615_eq
end InitE.BackendStages.TargetChecks
