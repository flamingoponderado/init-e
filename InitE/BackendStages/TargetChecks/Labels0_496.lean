import InitE.BackendStages.TargetChecks.Data0_496
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels0_496_eq : LabToTarget.sectionLabels 347648 Initial496.lines [] = (347844, localLabels0_496) := by
  with_unfolding_all rfl
#print axioms localLabels0_496_eq
end InitE.BackendStages.TargetChecks
