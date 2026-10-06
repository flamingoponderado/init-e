import InitE.BackendStages.TargetChecks.CorrectData1_124
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_124_eq : LabToTarget.sectionLabels 21072 Reencode0_124.lines [] = (21276, localLabels1_124) := by
  with_unfolding_all rfl
#print axioms localLabels1_124_eq
end InitE.BackendStages.TargetChecks.Correct
