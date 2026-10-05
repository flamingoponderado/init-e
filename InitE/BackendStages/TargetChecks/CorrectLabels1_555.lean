import InitE.BackendStages.TargetChecks.CorrectData1_555
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_555_eq : LabToTarget.sectionLabels 400512 Reencode0_555.lines [] = (401068, localLabels1_555) := by
  with_unfolding_all rfl
#print axioms localLabels1_555_eq
end InitE.BackendStages.TargetChecks.Correct
