import InitE.BackendStages.TargetChecks.CorrectData1_274
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_274_eq : LabToTarget.sectionLabels 169564 Reencode0_274.lines [] = (169816, localLabels1_274) := by
  with_unfolding_all rfl
#print axioms localLabels1_274_eq
end InitE.BackendStages.TargetChecks.Correct
