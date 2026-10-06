import InitE.BackendStages.Encoded282
import InitE.BackendStages.TargetChecks.Initial282
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial282_eq : InitE.BackendStages.Encoded282 = Initial282 := by
  with_unfolding_all rfl
#print axioms Initial282_eq
end InitE.BackendStages.TargetChecks
