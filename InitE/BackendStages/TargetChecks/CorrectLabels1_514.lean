import InitE.BackendStages.TargetChecks.CorrectData1_514
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_514_eq : LabToTarget.sectionLabels 361960 Reencode0_514.lines [] = (362832, localLabels1_514) := by
  with_unfolding_all rfl
#print axioms localLabels1_514_eq
end InitE.BackendStages.TargetChecks.Correct
