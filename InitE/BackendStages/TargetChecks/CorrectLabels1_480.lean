import InitE.BackendStages.TargetChecks.CorrectData1_480
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_480_eq : LabToTarget.sectionLabels 339272 Reencode0_480.lines [] = (339620, localLabels1_480) := by
  with_unfolding_all rfl
#print axioms localLabels1_480_eq
end InitE.BackendStages.TargetChecks.Correct
