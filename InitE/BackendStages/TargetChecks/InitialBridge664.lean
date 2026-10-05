import InitE.BackendStages.Encoded664
import InitE.BackendStages.TargetChecks.Initial664
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial664_eq : InitE.BackendStages.Encoded664 = Initial664 := by
  with_unfolding_all rfl
#print axioms Initial664_eq
end InitE.BackendStages.TargetChecks
