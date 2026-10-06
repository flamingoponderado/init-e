import InitE.BackendStages.Encoded64
import InitE.BackendStages.TargetChecks.Initial64
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial64_eq : InitE.BackendStages.Encoded64 = Initial64 := by
  with_unfolding_all rfl
#print axioms Initial64_eq
end InitE.BackendStages.TargetChecks
