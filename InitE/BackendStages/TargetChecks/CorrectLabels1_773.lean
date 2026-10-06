import InitE.BackendStages.TargetChecks.CorrectData1_773
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_773_eq : LabToTarget.sectionLabels 753432 Reencode0_773.lines [] = (755164, localLabels1_773) := by
  with_unfolding_all rfl
#print axioms localLabels1_773_eq
end InitE.BackendStages.TargetChecks.Correct
