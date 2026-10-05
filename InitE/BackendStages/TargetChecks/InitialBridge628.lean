import InitE.BackendStages.Encoded628
import InitE.BackendStages.TargetChecks.Initial628
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial628_eq : InitE.BackendStages.Encoded628 = Initial628 := by
  with_unfolding_all rfl
#print axioms Initial628_eq
end InitE.BackendStages.TargetChecks
