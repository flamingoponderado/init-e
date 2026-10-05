import InitE.BackendStages.Encoded781
import InitE.BackendStages.TargetChecks.Initial781
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial781_eq : InitE.BackendStages.Encoded781 = Initial781 := by
  with_unfolding_all rfl
#print axioms Initial781_eq
end InitE.BackendStages.TargetChecks
