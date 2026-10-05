import InitE.BackendStages.Encoded800
import InitE.BackendStages.TargetChecks.Initial800
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial800_eq : InitE.BackendStages.Encoded800 = Initial800 := by
  with_unfolding_all rfl
#print axioms Initial800_eq
end InitE.BackendStages.TargetChecks
