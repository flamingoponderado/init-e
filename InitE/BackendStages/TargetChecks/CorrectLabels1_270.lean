import InitE.BackendStages.TargetChecks.CorrectData1_270
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_270_eq : LabToTarget.sectionLabels 168228 Reencode0_270.lines [] = (168632, localLabels1_270) := by
  with_unfolding_all rfl
#print axioms localLabels1_270_eq
end InitE.BackendStages.TargetChecks.Correct
