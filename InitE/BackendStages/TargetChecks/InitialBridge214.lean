import InitE.BackendStages.Encoded214
import InitE.BackendStages.TargetChecks.Initial214
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial214_eq : InitE.BackendStages.Encoded214 = Initial214 := by
  with_unfolding_all rfl
#print axioms Initial214_eq
end InitE.BackendStages.TargetChecks
