import InitE.BackendStages.Encoded71
import InitE.BackendStages.TargetChecks.Initial71
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial71_eq : InitE.BackendStages.Encoded71 = Initial71 := by
  with_unfolding_all rfl
#print axioms Initial71_eq
end InitE.BackendStages.TargetChecks
