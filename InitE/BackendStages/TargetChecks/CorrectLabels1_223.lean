import InitE.BackendStages.TargetChecks.CorrectData1_223
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_223_eq : LabToTarget.sectionLabels 85552 Reencode0_223.lines [] = (85620, localLabels1_223) := by
  with_unfolding_all rfl
#print axioms localLabels1_223_eq
end InitE.BackendStages.TargetChecks.Correct
