import InitE.BackendStages.TargetChecks.CorrectData1_319
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_319_eq : LabToTarget.sectionLabels 215156 Reencode0_319.lines [] = (215688, localLabels1_319) := by
  with_unfolding_all rfl
#print axioms localLabels1_319_eq
end InitE.BackendStages.TargetChecks.Correct
