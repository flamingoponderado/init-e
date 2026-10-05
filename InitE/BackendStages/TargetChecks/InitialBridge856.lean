import InitE.BackendStages.Encoded856
import InitE.BackendStages.TargetChecks.Initial856
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial856_eq : InitE.BackendStages.Encoded856 = Initial856 := by
  with_unfolding_all rfl
#print axioms Initial856_eq
end InitE.BackendStages.TargetChecks
