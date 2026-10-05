import InitE.BackendStages.Encoded711
import InitE.BackendStages.TargetChecks.Initial711
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial711_eq : InitE.BackendStages.Encoded711 = Initial711 := by
  with_unfolding_all rfl
#print axioms Initial711_eq
end InitE.BackendStages.TargetChecks
