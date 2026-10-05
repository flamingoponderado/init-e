import InitE.BackendStages.Encoded673
import InitE.BackendStages.TargetChecks.Initial673
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial673_eq : InitE.BackendStages.Encoded673 = Initial673 := by
  with_unfolding_all rfl
#print axioms Initial673_eq
end InitE.BackendStages.TargetChecks
