import InitE.BackendStages.Encoded872
import InitE.BackendStages.TargetChecks.Initial872
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial872_eq : InitE.BackendStages.Encoded872 = Initial872 := by
  with_unfolding_all rfl
#print axioms Initial872_eq
end InitE.BackendStages.TargetChecks
