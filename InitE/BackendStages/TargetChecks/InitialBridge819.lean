import InitE.BackendStages.Encoded819
import InitE.BackendStages.TargetChecks.Initial819
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial819_eq : InitE.BackendStages.Encoded819 = Initial819 := by
  with_unfolding_all rfl
#print axioms Initial819_eq
end InitE.BackendStages.TargetChecks
