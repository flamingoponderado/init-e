import InitE.BackendStages.TargetChecks.CorrectData1_511
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_511_eq : LabToTarget.sectionLabels 359344 Reencode0_511.lines [] = (360216, localLabels1_511) := by
  with_unfolding_all rfl
#print axioms localLabels1_511_eq
end InitE.BackendStages.TargetChecks.Correct
