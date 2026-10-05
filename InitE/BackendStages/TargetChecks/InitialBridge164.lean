import InitE.BackendStages.Encoded164
import InitE.BackendStages.TargetChecks.Initial164
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial164_eq : InitE.BackendStages.Encoded164 = Initial164 := by
  with_unfolding_all rfl
#print axioms Initial164_eq
end InitE.BackendStages.TargetChecks
