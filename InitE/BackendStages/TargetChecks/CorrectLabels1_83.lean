import InitE.BackendStages.TargetChecks.CorrectData1_83
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_83_eq : LabToTarget.sectionLabels 9896 Reencode0_83.lines [] = (9960, localLabels1_83) := by
  with_unfolding_all rfl
#print axioms localLabels1_83_eq
end InitE.BackendStages.TargetChecks.Correct
