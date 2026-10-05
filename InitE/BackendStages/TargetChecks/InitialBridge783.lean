import InitE.BackendStages.Encoded783
import InitE.BackendStages.TargetChecks.Initial783
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial783_eq : InitE.BackendStages.Encoded783 = Initial783 := by
  with_unfolding_all rfl
#print axioms Initial783_eq
end InitE.BackendStages.TargetChecks
