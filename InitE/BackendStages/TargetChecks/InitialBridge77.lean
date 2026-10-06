import InitE.BackendStages.Encoded77
import InitE.BackendStages.TargetChecks.Initial77
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial77_eq : InitE.BackendStages.Encoded77 = Initial77 := by
  with_unfolding_all rfl
#print axioms Initial77_eq
end InitE.BackendStages.TargetChecks
