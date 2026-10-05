import InitE.BackendStages.TargetChecks.CorrectData1_404
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_404_eq : LabToTarget.sectionLabels 278300 Reencode0_404.lines [] = (278720, localLabels1_404) := by
  with_unfolding_all rfl
#print axioms localLabels1_404_eq
end InitE.BackendStages.TargetChecks.Correct
