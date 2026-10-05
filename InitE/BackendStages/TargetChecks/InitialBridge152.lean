import InitE.BackendStages.Encoded152
import InitE.BackendStages.TargetChecks.Initial152
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial152_eq : InitE.BackendStages.Encoded152 = Initial152 := by
  with_unfolding_all rfl
#print axioms Initial152_eq
end InitE.BackendStages.TargetChecks
