import InitE.BackendStages.TargetChecks.CorrectData1_506
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_506_eq : LabToTarget.sectionLabels 354340 Reencode0_506.lines [] = (355380, localLabels1_506) := by
  with_unfolding_all rfl
#print axioms localLabels1_506_eq
end InitE.BackendStages.TargetChecks.Correct
