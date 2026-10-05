import InitE.BackendStages.TargetChecks.CorrectData0_563
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels0_563_eq : LabToTarget.sectionLabels 407880 Initial563.lines [] = (408080, localLabels0_563) := by
  with_unfolding_all rfl
#print axioms localLabels0_563_eq
end InitE.BackendStages.TargetChecks.Correct
