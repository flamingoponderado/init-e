import InitE.BackendStages.TargetChecks.CorrectData1_658
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_658_eq : LabToTarget.sectionLabels 582616 Reencode0_658.lines [] = (583436, localLabels1_658) := by
  with_unfolding_all rfl
#print axioms localLabels1_658_eq
end InitE.BackendStages.TargetChecks.Correct
