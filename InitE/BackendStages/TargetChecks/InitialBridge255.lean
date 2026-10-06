import InitE.BackendStages.Encoded255
import InitE.BackendStages.TargetChecks.Initial255
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.TargetChecks
theorem Initial255_eq : InitE.BackendStages.Encoded255 = Initial255 := by
  with_unfolding_all rfl
#print axioms Initial255_eq
end InitE.BackendStages.TargetChecks
