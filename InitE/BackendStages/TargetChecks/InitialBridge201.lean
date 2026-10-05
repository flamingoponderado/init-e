import InitE.BackendStages.Encoded201
import InitE.BackendStages.TargetChecks.Initial201
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial201_eq : InitE.BackendStages.Encoded201 = Initial201 := by
  with_unfolding_all rfl
#print axioms Initial201_eq
end InitE.BackendStages.TargetChecks
