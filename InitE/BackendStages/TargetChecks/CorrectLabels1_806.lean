import InitE.BackendStages.TargetChecks.CorrectData1_806
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_806_eq : LabToTarget.sectionLabels 830748 Reencode0_806.lines [] = (832564, localLabels1_806) := by
  with_unfolding_all rfl
#print axioms localLabels1_806_eq
end InitE.BackendStages.TargetChecks.Correct
