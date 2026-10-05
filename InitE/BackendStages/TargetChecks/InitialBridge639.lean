import InitE.BackendStages.Encoded639
import InitE.BackendStages.TargetChecks.Initial639
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial639_eq : InitE.BackendStages.Encoded639 = Initial639 := by
  with_unfolding_all rfl
#print axioms Initial639_eq
end InitE.BackendStages.TargetChecks
