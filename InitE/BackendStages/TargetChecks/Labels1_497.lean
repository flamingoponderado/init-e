import InitE.BackendStages.TargetChecks.Data1_497
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_497_eq : LabToTarget.sectionLabels 347844 Reencode0_497.lines [] = (348044, localLabels1_497) := by
  with_unfolding_all rfl
#print axioms localLabels1_497_eq
end InitE.BackendStages.TargetChecks
