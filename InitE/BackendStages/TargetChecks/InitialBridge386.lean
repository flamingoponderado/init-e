import InitE.BackendStages.Encoded386
import InitE.BackendStages.TargetChecks.Initial386
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial386_eq : InitE.BackendStages.Encoded386 = Initial386 := by
  with_unfolding_all rfl
#print axioms Initial386_eq
end InitE.BackendStages.TargetChecks
