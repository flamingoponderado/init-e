import InitE.BackendStages.TargetChecks.CorrectData1_563
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_563_eq : LabToTarget.sectionLabels 407880 Reencode0_563.lines [] = (408080, localLabels1_563) := by
  with_unfolding_all rfl
#print axioms localLabels1_563_eq
end InitE.BackendStages.TargetChecks.Correct
