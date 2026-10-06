import InitE.BackendStages.Encoded818
import InitE.BackendStages.TargetChecks.Initial818
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial818_eq : InitE.BackendStages.Encoded818 = Initial818 := by
  with_unfolding_all rfl
#print axioms Initial818_eq
end InitE.BackendStages.TargetChecks
