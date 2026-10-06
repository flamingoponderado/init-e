import InitE.BackendStages.Encoded618
import InitE.BackendStages.TargetChecks.Initial618
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial618_eq : InitE.BackendStages.Encoded618 = Initial618 := by
  with_unfolding_all rfl
#print axioms Initial618_eq
end InitE.BackendStages.TargetChecks
