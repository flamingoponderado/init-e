import InitE.BackendStages.TargetChecks.CorrectData1_140
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_140_eq : LabToTarget.sectionLabels 30796 Reencode0_140.lines [] = (32248, localLabels1_140) := by
  with_unfolding_all rfl
#print axioms localLabels1_140_eq
end InitE.BackendStages.TargetChecks.Correct
