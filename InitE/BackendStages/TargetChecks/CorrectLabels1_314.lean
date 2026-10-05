import InitE.BackendStages.TargetChecks.CorrectData1_314
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_314_eq : LabToTarget.sectionLabels 208908 Reencode0_314.lines [] = (209692, localLabels1_314) := by
  with_unfolding_all rfl
#print axioms localLabels1_314_eq
end InitE.BackendStages.TargetChecks.Correct
