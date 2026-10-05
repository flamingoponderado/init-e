import InitE.BackendStages.Encoded871
import InitE.BackendStages.TargetChecks.Initial871
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial871_eq : InitE.BackendStages.Encoded871 = Initial871 := by
  with_unfolding_all rfl
#print axioms Initial871_eq
end InitE.BackendStages.TargetChecks
