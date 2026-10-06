import InitE.BackendStages.Encoded564
import InitE.BackendStages.TargetChecks.Initial564
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial564_eq : InitE.BackendStages.Encoded564 = Initial564 := by
  with_unfolding_all rfl
#print axioms Initial564_eq
end InitE.BackendStages.TargetChecks
