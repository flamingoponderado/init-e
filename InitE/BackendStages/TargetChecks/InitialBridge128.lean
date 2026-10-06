import InitE.BackendStages.Encoded128
import InitE.BackendStages.TargetChecks.Initial128
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial128_eq : InitE.BackendStages.Encoded128 = Initial128 := by
  with_unfolding_all rfl
#print axioms Initial128_eq
end InitE.BackendStages.TargetChecks
