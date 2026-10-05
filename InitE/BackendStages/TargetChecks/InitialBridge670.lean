import InitE.BackendStages.Encoded670
import InitE.BackendStages.TargetChecks.Initial670
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial670_eq : InitE.BackendStages.Encoded670 = Initial670 := by
  with_unfolding_all rfl
#print axioms Initial670_eq
end InitE.BackendStages.TargetChecks
