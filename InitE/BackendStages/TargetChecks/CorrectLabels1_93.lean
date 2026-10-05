import InitE.BackendStages.TargetChecks.CorrectData1_93
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_93_eq : LabToTarget.sectionLabels 11592 Reencode0_93.lines [] = (11620, localLabels1_93) := by
  with_unfolding_all rfl
#print axioms localLabels1_93_eq
end InitE.BackendStages.TargetChecks.Correct
